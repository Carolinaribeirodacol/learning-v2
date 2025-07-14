import { gql, useQuery } from "@apollo/client"
import { Register } from "../Register";
import { Container } from "./style"

const GET_CURRENT_USER = gql`
  query users {
    name
  }
`;

export function Home() {
  const { data, loading } = useQuery(GET_CURRENT_USER)

  if (loading) {
    return <p>Carregando...</p>
  }

  return (
    <Container>
      {/* <Register></Register> */}
      <h1>Bem-vindo(a) {data?.users}</h1>
    </Container>
  );
}
