import { Field, ID, ObjectType } from "type-graphql";
import { Pet } from "./Pet";
import {
  Entity,
  BaseEntity,
  Column,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  UpdateDateColumn,
  JoinColumn,
  OneToOne,
  OneToMany
} from "typeorm";
import { Task } from "./Task";

@Entity()
@ObjectType()
export class User extends BaseEntity {
  @PrimaryGeneratedColumn("uuid")
  @Field(() => ID)
  id: string;

  @CreateDateColumn()
  @Field(() => Date)
  createdAt: Date;

  @UpdateDateColumn()
  @Field(() => Date)
  updatedAt: Date;

  @Column({ unique: true })
  @Field(() => String)
  name: string;

  @Column({ unique: true })
  @Field(() => String)
  email: string;

  @Column()
  password: string;

  @Column("int", { default: 0 })
  tokenVersion: number;

  @OneToOne((type) => Pet)
  @JoinColumn()
  pets: Pet;

  @OneToOne((type) => Task)
  @JoinColumn()
  tasks: Task;

  @Column("boolean", {
    default: false,
  })
  confirmed: boolean;
}
