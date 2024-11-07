import { Controller, Get, Param, Post, Body } from '@nestjs/common';
import { AppService, GetResultRow, SubmitArgs, SubmitRow } from './app.service';


@Controller('api')
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get('get-result/:userId')
  async getResult(@Param('userId') userId: string) : Promise<GetResultRow> {
    return this.appService.getResult(userId);
  }

  @Post('submit/:userId')
  async submitResult(
    @Param('userId') userId: string,
    @Body() body: SubmitArgs,
  ) : Promise<SubmitRow> {
    return this.appService.submitResult(userId, body);
  }
}
