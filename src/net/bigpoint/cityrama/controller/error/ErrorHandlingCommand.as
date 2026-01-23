package net.bigpoint.cityrama.controller.error
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ErrorHandlingCommand extends SimpleCommand
   {
      
      private static const ERROR_LEVEL_FATAL:int = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         ERROR_LEVEL_FATAL = 1;
      }
      
      private const ERROR_LEVEL_FATAL_USER_DATA_CORRUPT:int = 2;
      
      private var _errorMessage:String;
      
      public function ErrorHandlingCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && Boolean(param1)))
         {
            if(ApplicationNotificationConstants.ERROR_BUILDING_DTO_CORRUPT === _loc2_)
            {
               addr006d:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.handleCorruptBuildingDTO(BuildingDTO(param1.getBody()));
                  if(_loc3_)
                  {
                  }
            }
            return;
         }
         §§goto(addr006d);
      }
      
      private function handleCorruptBuildingDTO(param1:BuildingDTO) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc3_:Object = null;
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:Boolean = false;
         var _loc7_:* = NaN;
         var _loc2_:PlayerProxy = super.facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         if(_loc13_)
         {
            if(param1.corruptServerObject.ph)
            {
               addr0052:
               loop0:
               for each(_loc3_ in param1.corruptServerObject.ph)
               {
                  if(_loc13_ || Boolean(param1))
                  {
                     §§push(0);
                     if(_loc13_)
                     {
                        var _loc10_:* = §§pop();
                        if(!_loc12_)
                        {
                           §§push(param1.config);
                           if(_loc13_)
                           {
                              var _loc11_:* = §§pop().activePhases;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc11_,_loc10_));
                                 if(!(_loc13_ || Boolean(_loc3_)))
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    _loc5_ = §§nextvalue(_loc10_,_loc11_);
                                    if(_loc5_.phaseId == _loc3_.pid)
                                    {
                                       if(_loc13_)
                                       {
                                          _loc6_ = true;
                                       }
                                    }
                                    continue;
                                 }
                                 if(_loc13_ || Boolean(_loc3_))
                                 {
                                    if(_loc13_ || Boolean(_loc3_))
                                    {
                                       if(_loc13_ || Boolean(param1))
                                       {
                                          §§push(0);
                                          if(_loc13_ || Boolean(this))
                                          {
                                             addr0113:
                                             _loc10_ = §§pop();
                                             if(_loc13_ || Boolean(this))
                                             {
                                                addr0123:
                                                §§push(param1.config);
                                                if(_loc13_)
                                                {
                                                   _loc11_ = §§pop().constructionPhases;
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc11_,_loc10_));
                                                      if(!(_loc13_ || Boolean(_loc3_)))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         _loc5_ = §§nextvalue(_loc10_,_loc11_);
                                                         if(_loc5_.phaseId == _loc3_.pid)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               _loc6_ = true;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc12_ && Boolean(_loc2_)))
                                                      {
                                                         addr0187:
                                                         if(!_loc12_)
                                                         {
                                                            if(_loc13_ || Boolean(_loc3_))
                                                            {
                                                               §§push(0);
                                                               if(_loc13_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(_loc13_ || Boolean(_loc2_))
                                                                  {
                                                                     addr01ba:
                                                                     _loc11_ = param1.config.destructionPhases;
                                                                     addr01b7:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc11_,_loc10_));
                                                                        break loop4;
                                                                     }
                                                                  }
                                                                  addr01ed:
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(!(_loc13_ || Boolean(_loc3_)))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(SystemManager.rawStage.loaderInfo.parameters.uid == null)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr0226:
                                                                        §§push(-1);
                                                                        if(!_loc12_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(_loc13_ || Boolean(_loc2_))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0252:
                                                                           _loc7_ = §§pop();
                                                                           if(!(_loc13_ || Boolean(_loc3_)))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        addr0262:
                                                                        §§push(this);
                                                                        §§push(this.ERROR_LEVEL_FATAL_USER_DATA_CORRUPT);
                                                                        §§push("Uid:");
                                                                        if(_loc13_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc13_ || Boolean(this))
                                                                              {
                                                                                 §§push(" ConfigPlayfieldItemId:");
                                                                                 if(_loc13_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc12_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       §§push(param1.config.id);
                                                                                       if(_loc13_ || Boolean(this))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc12_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(" BuildingId: ");
                                                                                             if(_loc13_ || Boolean(_loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   addr02fb:
                                                                                                   addr02f8:
                                                                                                   §§push(§§pop() + param1.id);
                                                                                                   if(_loc13_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      addr030a:
                                                                                                      addr030e:
                                                                                                      §§push(§§pop() + " config Phase id: ");
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         addr0315:
                                                                                                         §§push(§§pop() + _loc3_.pid);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().dispatchError(§§pop(),§§pop());
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr030a);
                                                                                             }
                                                                                             §§goto(addr030e);
                                                                                          }
                                                                                          §§goto(addr0315);
                                                                                       }
                                                                                       §§goto(addr02fb);
                                                                                    }
                                                                                    §§goto(addr0315);
                                                                                 }
                                                                                 §§goto(addr030e);
                                                                              }
                                                                              §§goto(addr030a);
                                                                           }
                                                                           §§goto(addr02fb);
                                                                        }
                                                                        §§goto(addr02f8);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Number(SystemManager.rawStage.loaderInfo.parameters.uid));
                                                                     }
                                                                     §§goto(addr0252);
                                                                  }
                                                                  §§goto(addr0262);
                                                               }
                                                               §§goto(addr0226);
                                                            }
                                                            §§goto(addr0262);
                                                         }
                                                      }
                                                      §§goto(addr01ed);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr01ba);
                                             }
                                             §§goto(addr01ed);
                                          }
                                          §§goto(addr0226);
                                       }
                                       §§goto(addr0224);
                                    }
                                    §§goto(addr01b7);
                                 }
                                 §§goto(addr0187);
                              }
                              while(§§pop())
                              {
                                 _loc5_ = §§nextvalue(_loc10_,_loc11_);
                                 if(_loc5_.phaseId == _loc3_.pid)
                                 {
                                    if(_loc13_)
                                    {
                                       _loc6_ = true;
                                    }
                                 }
                                 §§push(§§hasnext(_loc11_,_loc10_));
                              }
                              §§goto(addr01eb);
                           }
                           §§goto(addr01ba);
                        }
                        §§goto(addr0123);
                     }
                     §§goto(addr0113);
                  }
                  §§goto(addr0209);
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      private function dispatchError(param1:int, param2:String) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(this))
         {
            this._errorMessage = param2;
         }
         §§push(param1);
         if(!_loc4_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               §§push(this.ERROR_LEVEL_FATAL_USER_DATA_CORRUPT);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() === _loc3_)
                  {
                     addr00b3:
                     §§push(0);
                     if(_loc5_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               §§goto(addr00d5);
            }
            §§goto(addr00b3);
         }
         addr00d5:
         switch(§§pop())
         {
            case 0:
               TweenMax.delayedCall(2,this.openFatal);
               if(_loc5_ || Boolean(param1))
               {
                  facade.registerCommand(ApplicationNotificationConstants.PHP_SEND_FATAL_ERROR,SendFatalErrorToPHPCommand);
                  if(_loc5_ || Boolean(param2))
                  {
                  }
               }
         }
      }
      
      private function openFatal() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.PHP_SEND_FATAL_ERROR,{
               "subject":"Error 37",
               "body":this._errorMessage
            });
            if(!_loc1_)
            {
               sendNotification(MiniLayerConstants.OPEN_MINI_FATAL_ERROR);
            }
         }
      }
   }
}

