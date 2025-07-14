import { gql, useQuery } from "@apollo/client"
import { Container } from "./style"

const GET_CURRENT_USER = gql`
  query {
    currentUser {
      name
    }

    pets {
      id,
      name,
      breed,
      age,
      weight,
      height
    }
  }
`


export function Pets() {
  const { data, loading } = useQuery(GET_CURRENT_USER)

  if (loading) {
    return <p>Carregando...</p>
  }

  return (
    <Container>
      <div className="content">
        <div className="table">
          <table>
            <thead>
              <tr>
                <th>Nome</th>
                <th>Raça</th>
                <th>Idade</th>
                <th>Peso</th>
                <th>Altura</th>
              </tr>
            </thead>
            <tbody>
              {data.pets}
              {/* {data?.pets.map((pet) => {
                return (
                  <tr key={pet.id}>
                    <td>{pet.name}</td>
                    <td>{pet.breed}</td>
                    <td>{pet.age}</td>
                    <td>{pet.weight}</td>
                    <td>{pet.height}</td>
                  </tr>
                );
              })} */}
            </tbody>
          </table>
        </div>
      </div>
    </Container>
  );
}
