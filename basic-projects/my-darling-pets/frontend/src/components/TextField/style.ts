import { darken } from "polished";
import styled from "styled-components";

export const Container = styled.div`
  input {
    border-radius: 1rem;
    min-width: 200px;
    max-height: 40px;
    border: 2px solid ${(props) => props.theme.colors.gray};
    background-color: ${(props) => props.theme.colors.gray};
    text-align: center;
    padding: 1rem;
    font-size: 1.625rem;
    font-weight: 400;
    color: ${(props) => props.theme.colors.background};
    cursor: text;

    &:focus {
      outline: none;
      border: 2px solid ${(props) => darken(0.1, props.theme.colors.gray)};
    }
  }
`;
