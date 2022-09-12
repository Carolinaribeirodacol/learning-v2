import { gql, useQuery } from "@apollo/client";
import { NewUserForm } from "../../components/UserForm/NewUserForm";
import { Container } from "./style";

export const GET_USERS = gql`
  query {
    users {
      id
      name
      email
    }
  }
`;

// export const GET_USER = gql`
//   query {
//     user {
//       id
//       name
//       email
//     }

//     pets {
//       id
//       name
//     }
//   }
// `;

const GET_CURRENT_USER = gql`
  query {
    currentUser {
      name
    }
  }
`;

export function Home() {
  const { data, loading } = useQuery(GET_CURRENT_USER);

  if (loading) {
    return <p>Carregando...</p>;
  }

  return (
    <Container>
      <NewUserForm />
      <h1>Bem-vindo(a) {data?.currentUser.name}</h1>
    </Container>
  );
}
