import styled from "styled-components";

export const Container = styled.div`
  background-image: url("/assets/background.png");
  width: 100%;
  height: 100vh;
  color: #fff;
  margin: 1rem;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;

  .rec-login {
    background-color: ${(props) => props.theme.colors.background};
    border-radius: 1rem;
    display: flex;
    flex-direction: column;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: center;
    align-items: center;
    padding: 2rem;

    input {
      margin: 1rem 0 0 0;
    }

    span {
      margin: 1rem 0 0 0;
      .register-text {
        color: ${(props) => props.theme.colors.purple};
      }
    }

    button {
      margin: 1rem 0 0 0;
      transition: 0.3s;

      &:hover {
        filter: brightness(85%);
      }
    }
  }
`;
