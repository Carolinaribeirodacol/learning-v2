import { ChangeEvent } from "react";
import { Container } from "./style";

interface TextFieldProps {
  value?: string;
  type?: string;
  placeholder: string;
  onChange?: (event: ChangeEvent<HTMLInputElement>) => void;
}

export function TextField({ onChange, ...props }: TextFieldProps) {
  return (
    <Container>
      <input onChange={onChange} {...props} />
    </Container>
  );
}