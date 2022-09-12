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
export class DaysOfWeek extends BaseEntity {
  @PrimaryGeneratedColumn("uuid")
  @Field(() => ID)
  id: string;

  @Field(() => ID)
  task_id: string;

  @CreateDateColumn()
  @Field(() => Date)
  createdAt: Date;

  @UpdateDateColumn()
  @Field(() => Date)
  updatedAt: Date;

  @Column()
  @Field(() => Boolean)
  monday: boolean;

  @Column()
  @Field(() => Boolean)
  tuesday: boolean;

  @Column()
  @Field(() => Boolean)
  wednesday: boolean;

  @Column()
  @Field(() => Boolean)
  thursday: boolean;

  @Column()
  @Field(() => Boolean)
  friday: boolean;

  @Column()
  @Field(() => Boolean)
  saturday: boolean;

  @Column()
  @Field(() => Boolean)
  sunday: boolean;
}
