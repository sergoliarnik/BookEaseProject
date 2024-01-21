package org.example.bookease.service.impl;

import jakarta.persistence.EntityNotFoundException;
import org.example.bookease.service.CrudService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public abstract class AbstractCrudServiceImpl<T> implements CrudService<T> {
    protected JpaRepository<T, String> repo;

    protected AbstractCrudServiceImpl(JpaRepository<T, String> repo) {
        this.repo = repo;
    }

    @Override
    public T findById(String id) {
        return repo.findById(id)
                .orElseThrow(
                        () -> new EntityNotFoundException(String.format("Entity was not found by id - %s", id)));
    }

    @Override
    public Page<T> findAll(Pageable pageable) {
        return repo.findAll(pageable);
    }

    @Override
    public T save(T t) {
        return repo.save(t);
    }

    @Override
    public T update(T t) {
        return repo.save(t);
    }

    @Override
    public void delete(String id) {
        repo.deleteById(id);
    }
}
