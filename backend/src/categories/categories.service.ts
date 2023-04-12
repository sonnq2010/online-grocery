import { Injectable } from '@nestjs/common';
import { Category, PrismaClient } from '@prisma/client';

@Injectable()
export class CategoriesService {
    private readonly prisma: PrismaClient;

    // Get all categories
    async findAll() {
        let response: Category[] = await this.prisma.category.findMany();
        console.log(response)

        return "con cac"

    }

    // Get a single category by id
    async findOne(id: string) {
        return await this.prisma.category.findUnique({
            where: { id },
        });
    }

    // Create a new category
    async create(data: any) {
        return await this.prisma.category.create({
            data,
        });
    }

    // Update a category by id
    async update(id: string, data: any) {
        return await this.prisma.category.update({
            where: { id },
            data,
        });
    }

    // Delete a category by id
    async remove(id: string) {
        return await this.prisma.category.delete({
            where: { id },
        });
    }
}

