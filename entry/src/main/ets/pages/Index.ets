import hilog from '@ohos.hilog';
import { logger } from '../commons/utils/Logger';


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Column() {
        Button("hilog.info测试")
          .onClick(() => {
            logger.info('info测试测试一下这个')
            hilog.info(0x000, "mylog", "%{public}s, %{public}s", "info", "info1");
          })

        Button("hilog.debug测试")
          .onClick(() => {
            logger.info('debug测试测试一下这个')
            hilog.info(0x000, "mylog", "%{public}s, %{public}s", "debug", "info1");
          })

        Button("hilog.warn测试")
          .onClick(() => {
            logger.info('warn测试测试一下这个')
            hilog.info(0x000, "mylog", "%{public}s, %{public}s", "warn", "info1");
          })


      }
    }
    .height('100%')
    .width('100%')
  }
}

console.log("ok")