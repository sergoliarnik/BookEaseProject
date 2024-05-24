package org.example.bookease.mapper;

import org.example.bookease.dto.company.CompanyDto;
import org.example.bookease.entity.Company;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface CompanyMapper {
    CompanyDto toCompanyDto(Company company);
}