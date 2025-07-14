import { gql, useMutation } from "@apollo/client";
import { ChangeEvent, FormEvent, useState } from "react";
import { Button } from "../../components/Button/Button";
import { TextField } from "../../components/TextField/TextField";
import { client } from "../../lib/apollo";
import { Container } from "./style";

const LOGIN_USER = gql`
  mutation Login($email: String, $password: String) {
    login(email: $email, password: $password) {
      access_token
    }
  }
`;

export function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [login] = useMutation(LOGIN_USER);

  async function handleLogin(event: FormEvent) {
    event.preventDefault(); // Não atualiza a página quando efetua o submit;

    if (!email || !password) {
      return;
    }

    await login({
      variables: {
        email,
        password,
      },
      update: (cache, { data: { login } }) => {
        const { user } = client.readQuery({ query: LOGIN_USER });

        cache.writeQuery({
          query: LOGIN_USER,
          data: {
            user: {
              ...user,
              login,
            },
          },
        });
      },
    });
  }

  return (
    <Container>
      <form className="rec-login" onSubmit={handleLogin}>
        <img src="/assets/cat-login.svg" alt="login-img" />

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

        <Button type="submit" color="purple">
          Entrar
        </Button>

        <span>
          Não possui cadastro? <b className="register-text">Cadastrar</b>
        </span>
      </form>
    </Container>
  );
}
