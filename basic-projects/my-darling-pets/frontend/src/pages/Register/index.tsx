import { gql, useMutation } from '@apollo/client';
import { ChangeEvent, FormEvent, useState } from 'react';
import { Button } from '../../components/Button/Button';
import { TextField } from '../../components/TextField/TextField';
import { client } from '../../lib/apollo';
import { Container } from './style';

const CREATE_USER = gql`
  mutation createUser($name: String!, $email: String!, $password: String!) {
    createUser(data: { name: $name, email: $email, password: $password }) {
      id
      name
      email
    }
  }
`;

export function Register() {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [createUser, { data, loading, error }] = useMutation(CREATE_USER);

  async function handleCreateUser(event: FormEvent) {
    event.preventDefault();

    if (!name) {
      return;
    }

    await createUser({
      variables: {
        name,
        email,
        password,
      },
      // update: (cache, { data: { createUser } }) => {
      //   const { users } = client.readQuery({ query: CREATE_USER });

      //   cache.writeQuery({
      //     query: CREATE_USER,
      //     data: {
      //       login: {
      //         ...users,
      //         createUser,
      //       },
      //     },
      //   });
      // },

      // refetchQueries: [GET_USERS]
    })
      .then((res) => {
        console.log(res);
      })
      .catch((e) => {
        throw e;
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
