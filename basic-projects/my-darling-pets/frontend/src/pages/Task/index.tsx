import { useState } from "react"
import { NewTaskModal } from "../../components/TaskModal"
import { Container } from "./style";
import { Card } from "../../components/Card"
import { gql, useQuery } from "@apollo/client"

const GET_CURRENT_USER = gql`
  query {
    currentUser {
      name
    }

    taskType {
      name
    }
  }
`

export function Task() {
  const [isTaskModalOpen, setIsTaskModalOpen] = useState(false)
  const { data, loading } = useQuery(GET_CURRENT_USER)

  if (loading) {
    return <p>Carregando...</p>
  }

  function handleCloseTaskModal() {
    setIsTaskModalOpen(false);
  }

  return (
    <Container>
      <div className="content">
        <div className="cards">
          {/* {data?.taskTypes.map(taskType => {
            return (
              <>
                <NewTaskModal isOpen={isTaskModalOpen} onRequestClose={handleCloseTaskModal} title={taskType.name} />
                <Card img={taskType.img?.url} title={taskType.name} />
              </>
            );
          })} */}
        </div>
      </div>
    </Container>
  );
}