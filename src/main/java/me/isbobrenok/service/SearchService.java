package me.isbobrenok.service;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import me.isbobrenok.entity.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Component
@Slf4j
@RequiredArgsConstructor
public class SearchService {

    @PersistenceContext
    private final EntityManager entityManager;

    @SneakyThrows
    public Page<Employee> search(String word, String param, Pageable pageable) {

            var fullTextEntityManager =
                    org.hibernate.search.jpa.Search.getFullTextEntityManager(entityManager);
            fullTextEntityManager.createIndexer().startAndWait();
            var qb = fullTextEntityManager
                    .getSearchFactory()
                    .buildQueryBuilder()
                    .forEntity(Employee.class)
                    .get();

            var query = qb.keyword()
                    .onField(param)
                    .matching(word)
                    .createQuery();

            var jpaQuery = fullTextEntityManager
                    .createFullTextQuery(query, Employee.class);
            jpaQuery.setFirstResult(pageable.getPageSize() * pageable.getPageNumber()).setMaxResults(pageable.getPageSize());

        int resultSize = jpaQuery.getResultSize();
        List<Employee> results = jpaQuery.getResultList();

        return new PageImpl<>(results, pageable, resultSize);
        }
}

