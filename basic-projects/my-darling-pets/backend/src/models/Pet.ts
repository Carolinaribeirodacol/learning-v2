import { Field, ID, ObjectType } from "type-graphql";
import {
  Entity,
  BaseEntity,
  Column,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  UpdateDateColumn,
} from "typeorm";

@Entity()
@ObjectType()
export class Pet extends BaseEntity {
  @PrimaryGeneratedColumn("uuid")
  @Field(() => ID)
  id: string;

  @CreateDateColumn()
  @Field(() => Date)
  createdAt: Date;

  @UpdateDateColumn()
  @Field(() => Date)
  updatedAt: Date;

  @Column()
  @Field(() => String)
  name: string;

  @Column()
  @Field(() => String)
  breed: string;

  @Column()
  @Field(() => Number)
  age: number;

  @Column()
  @Field(() => Number)
  weight: number;

  @Column()
  @Field(() => Number)
  height: number;
}

