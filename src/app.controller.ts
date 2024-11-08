import { Controller, Get, Param, Post, Body } from '@nestjs/common';
import { AppService, GetResultRow, SubmitArgs, SubmitRow } from './app.service';
import { ApiOperation, ApiParam, ApiBody } from '@nestjs/swagger';

@Controller('api')
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get('get-result/:userId')
  @ApiOperation({ summary: 'Get result by user ID' })
  async getResult(@Param('userId') userId: string) : Promise<GetResultRow> {
    return this.appService.getResult(userId);
  }

  @Post('submit/:userId')
  @ApiOperation({ summary: 'Submit result by user ID' })
  @ApiParam({ name: 'userId', required: true, description: 'The ID of the user', type: String })
  @ApiBody({ description: 'The data to submit', type: SubmitArgs })
  async submitResult(
    @Param('userId') userId: string,
    @Body() body: { SubmitArgs: SubmitArgs },
  ): Promise<SubmitRow> {
    const submitArgs = body.SubmitArgs;

    console.log('Extracted userId:', userId);
    console.log('SubmitArgs:', submitArgs);

    return this.appService.submitResult(userId, submitArgs);
  }
}
