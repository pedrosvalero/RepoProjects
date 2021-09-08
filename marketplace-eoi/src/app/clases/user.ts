import { Order } from './order';
export class User {
  id?: number;
  name: string;
  password: string;
  pedidos?: Order[];
}
