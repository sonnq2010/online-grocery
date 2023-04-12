import { IsString, MaxLength, IsOptional } from 'class-validator';

export class UpdateCategoryDto {
    @IsOptional()
    @IsString()
    @MaxLength(50)
    name?: string;
}