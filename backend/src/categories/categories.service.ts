import { Injectable } from '@nestjs/common';
import prisma from 'src/prisma/prisma.service';

@Injectable()
export class CategoriesService {
  // Get all categories
  async findAll() {
    return await prisma.category.findMany();
  }

  // Get a single category by id
  async findOne(id: string) {
    return await prisma.category.findUnique({
      where: { id },
    });
  }

  // Create a new category
  async create(data: any) {
    return await prisma.category.create({
      data,
    });
  }

  // Update a category by id
  async update(id: string, data: any) {
    return await prisma.category.update({
      where: { id },
      data,
    });
  }

  // Delete a category by id
  async remove(id: string) {
    return await prisma.category.delete({
      where: { id },
    });
  }
}
