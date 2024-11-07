import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getResult(userId: string): string {
    if (userId === '123') {
      return '{ "success": true, "userId": ' + userId + ' }';
    }
    return '{ "success": false, "userId": ' + userId + ' }';
  }

  submitResult(userId: string, body: any): string {
    return '{ "success": true, "userId": ' + userId + ' }';
  }
}
