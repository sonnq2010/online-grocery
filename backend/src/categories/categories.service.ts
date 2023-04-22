import { Injectable } from '@nestjs/common';
import PrismaService from 'src/prisma/prisma.service';

@Injectable()
export class CategoriesService {
  constructor(private readonly prisma: PrismaService) { }

  // Get all categories
  async findAll() {
    return await this.prisma.category.findMany();
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
