import { ReactNode } from "react";
import { Container } from "./style";

interface ButtonProps {
  color: 'purple' | 'red' | 'darkGreen' | 'transparent';
  children: ReactNode;
  disabled?: true | false;
  type?: string,
  onClick?: () => void;
}

export function Button ({ color, children, disabled, onClick }: ButtonProps) {
  return (
    <Container color={color} onClick={onClick} disabled={disabled} >
      {children}
    </Container>
  );
}