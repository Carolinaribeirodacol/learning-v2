import { gql, useMutation } from "@apollo/client";
import { ChangeEvent, FormEvent, useState } from "react";
import { client } from "../../lib/apollo";
import { GET_USERS } from "../../pages/Home";
import { Button } from "../Button/Button";
import { TextField } from "../TextField/TextField";
import { Container } from "./style";

const CREATE_USER = gql`
  mutation ($name: String!, $email: String!, $password: String!) {  // O exclamação(!) indica qual campo é obrigatório.
    createUser(name: $name, email: $email, password: $password) {
      id
      name
    }
  }
`;

export function NewUserForm() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [createUser, { data, loading, error }] = useMutation(CREATE_USER);

  async function handleCreateUser(event: FormEvent) {
    event.preventDefault(); // Não atualiza a página quando efetua o submit;

    if (!name) {
      return;
    }

    await createUser({
      variables: {
        name,
        email,
      },
      update: (cache, { data: { createUser } }) => {
        const { users } = client.readQuery({ query: GET_USERS });

        cache.writeQuery({
          query: GET_USERS,
          data: {
            users: {
              ...users,
              createUser,
            },
          },
        });
      },
      // refetchQueries: [GET_USER]
    });
  }

  return (
    <Container>
      <form className="rec-login" onSubmit={handleCreateUser}>
        <img src="/assets/cat-login.svg" alt="login-img" />

        <TextField
          value={name}
          placeholder="name"
          onChange={(event: ChangeEvent<HTMLInputElement>) =>
            setName(event.target.value)
          }
        />

        <TextField
          value={email}
          placeholder="email"
          type="email"
          onChange={(event: ChangeEvent<HTMLInputElement>) =>
            setEmail(event.target.value)
          }
        />

        <TextField
          value={password}
          placeholder="senha"
          onChange={(event: ChangeEvent<HTMLInputElement>) =>
            setPassword(event.target.value)
          }
        />

        <Button type="submit" disabled={loading} color="purple">
          Cadastrar
        </Button>
      </form>
    </Container>
  );
}
