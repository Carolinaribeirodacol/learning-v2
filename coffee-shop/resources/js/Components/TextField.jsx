
import { Input } from '@mantine/core';

export default function TextField({ placeholder = "Digite aqui" }) {
    return (
        <Input size="md" radius="xl" placeholder={placeholder} />
    );
}