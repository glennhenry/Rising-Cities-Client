package net.bigpoint.cityrama.view.cursor
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class AttachImprovementToCursorCommand extends SimpleCommand
   {
      
      public function AttachImprovementToCursorCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function getColorByQuality(param1:String) : uint
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(!(_loc4_ && _loc3_))
         {
            §§push(ServerImprovementConstants.QUALITY_COMMON);
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc3_ || Boolean(_loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(_loc4_ && AttachImprovementToCursorCommand)
                        {
                        }
                     }
                     else
                     {
                        addr0113:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerImprovementConstants.QUALITY_EPIC);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr0113);
                              }
                              else
                              {
                                 addr0154:
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerImprovementConstants.QUALITY_RARE);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 addr0133:
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && AttachImprovementToCursorCommand))
                                       {
                                          §§goto(addr0154);
                                       }
                                       else
                                       {
                                          addr0175:
                                          §§push(3);
                                          if(_loc4_ && Boolean(_loc2_))
                                          {
                                          }
                                       }
                                       §§goto(addr0195);
                                    }
                                    else
                                    {
                                       §§goto(addr0171);
                                    }
                                 }
                                 addr0171:
                                 §§goto(addr0170);
                              }
                              addr0170:
                              if(ServerImprovementConstants.QUALITY_LEGENDARY === _loc2_)
                              {
                                 §§goto(addr0175);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr0195);
                           }
                           §§goto(addr0195);
                        }
                        §§goto(addr0171);
                     }
                     §§goto(addr0133);
                  }
                  addr0195:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           §§push(11861760);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           continue;
                        case 1:
                           §§push(11491298);
                           if(_loc3_ || AttachImprovementToCursorCommand)
                           {
                              return §§pop();
                           }
                           break loop0;
                        case 2:
                           §§push(2208717);
                           if(_loc3_ || Boolean(param1))
                           {
                              break loop0;
                           }
                           break;
                        case 3:
                           §§push(16751616);
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              break;
                           }
                           continue;
                        default:
                           throw RamaCityError("Somethings wrong quality not found");
                     }
                     return §§pop();
                  }
                  return §§pop();
               }
               §§goto(addr0171);
            }
            §§goto(addr0133);
         }
         §§goto(addr0113);
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:ConfigImprovementDTO = _loc3_.config.improvements[_loc2_];
         var _loc5_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         if(_loc8_)
         {
            facade.registerMediator(new MouseAttachLayerMediator(MouseAttachLayerMediator.NAME,_loc5_.component.mainView.mouseAttachLayer));
            if(!(_loc7_ && Boolean(param1)))
            {
               addr0091:
               if(getColorByQuality(_loc4_.quality) != -1)
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     sendNotification(ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR,{
                        "dynaVo":ImprovementLayerProxy.improvementGfx(_loc4_,ImprovementLayerProxy.SIZE_MINI),
                        "trailColor":getColorByQuality(_loc4_.quality)
                     });
                  }
               }
            }
            var _loc6_:ImprovementCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
            _loc6_.currentSelectedImprovementCid = _loc4_.id;
            return;
         }
         §§goto(addr0091);
      }
   }
}

