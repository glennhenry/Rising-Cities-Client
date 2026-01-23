package net.bigpoint.cityrama.model.serverStorage
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ClientUIDataDTO;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ServerStorageProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ServerStorageProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "ServerStorageProxy";
      }
      
      private var _uiDataDTO:ClientUIDataDTO;
      
      public function ServerStorageProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRegister();
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRemove();
            if(!(_loc2_ && _loc2_))
            {
               addr0027:
               TweenMax.killDelayedCallsTo(this.handleServerNotification());
            }
            return;
         }
         §§goto(addr0027);
      }
      
      public function updateUIData(param1:ClientUIDataDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._uiDataDTO = param1;
         }
      }
      
      public function updateState(param1:String, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            TweenMax.killDelayedCallsTo(this.handleServerNotification());
         }
         var _loc3_:* = param1;
         if(_loc5_)
         {
            §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC);
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               §§push(_loc3_);
               if(_loc5_ || Boolean(_loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr033a:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS);
                     if(!_loc4_)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr033a);
                              }
                              else
                              {
                                 addr039c:
                                 §§push(3);
                                 if(_loc4_ && Boolean(_loc3_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS);
                              if(!_loc4_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    addr0361:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          addr0373:
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0406:
                                          §§push(5);
                                          if(_loc5_ || Boolean(this))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS);
                                       if(!_loc4_)
                                       {
                                          addr038b:
                                          §§push(_loc3_);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr039c);
                                                }
                                                else
                                                {
                                                   §§goto(addr0406);
                                                }
                                             }
                                             else
                                             {
                                                §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_)
                                                   {
                                                      addr03c3:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(4);
                                                            if(_loc5_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0432:
                                                            §§push(6);
                                                            if(_loc4_ && Boolean(this))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION);
                                                         if(_loc5_)
                                                         {
                                                            addr03e5:
                                                            §§push(_loc3_);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               addr03f4:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc4_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§goto(addr0406);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0432);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr042e);
                                                               }
                                                               §§goto(addr0432);
                                                            }
                                                            addr042e:
                                                            §§goto(addr0420);
                                                         }
                                                         addr0420:
                                                         if(OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE === _loc3_)
                                                         {
                                                            §§goto(addr0432);
                                                         }
                                                         else
                                                         {
                                                            §§push(7);
                                                         }
                                                      }
                                                      §§goto(addr0452);
                                                   }
                                                   §§goto(addr042e);
                                                }
                                                §§goto(addr03e5);
                                             }
                                             §§goto(addr0452);
                                          }
                                          §§goto(addr03f4);
                                       }
                                       §§goto(addr0420);
                                    }
                                    §§goto(addr0452);
                                 }
                                 §§goto(addr03c3);
                              }
                              §§goto(addr038b);
                           }
                           §§goto(addr0452);
                        }
                        §§goto(addr03f4);
                     }
                     §§goto(addr0420);
                  }
                  addr0452:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this.uiDataDTO);
                        if(_loc5_)
                        {
                           §§push(param2);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§pop().lowTraffic = §§pop();
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 §§push(OptionsGlobalVariables.getInstance());
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§push(param2);
                                    if(_loc5_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_)
                                       {
                                          §§pop().normalCitizenAmount = §§pop();
                                          if(!(_loc5_ || param2))
                                          {
                                             addr00e9:
                                             §§push(FileRuntimeLoadServiceDynamic.getInstance());
                                             §§push(param2);
                                             if(!(_loc4_ && param2))
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().optionSmoothing = §§pop();
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                facade.sendNotification(ApplicationNotificationConstants.QUALITY_CHANGED);
                                                if(!_loc5_)
                                                {
                                                   addr01ab:
                                                   §§push(OptionsGlobalVariables.getInstance());
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      §§push(param2);
                                                      if(_loc5_ || param2)
                                                      {
                                                         addr01ce:
                                                         §§pop().showDropIcons = §§pop();
                                                         if(_loc4_ && Boolean(_loc3_))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr023c:
                                                         §§pop().showRCVerification = §§pop();
                                                         if(!(_loc5_ || Boolean(param1)))
                                                         {
                                                            addr0274:
                                                            §§push(OptionsGlobalVariables.getInstance());
                                                            if(_loc5_ || Boolean(_loc3_))
                                                            {
                                                               addr0288:
                                                               §§push(param2);
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr0297:
                                                                  §§pop().fasterNotification = §§pop();
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr02c2:
                                                                  §§pop().fullscreenActive = §§pop();
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                               }
                                                               addr0477:
                                                               TweenMax.delayedCall(0.3,this.handleServerNotification);
                                                               break;
                                                            }
                                                            addr02c1:
                                                            §§push(param2);
                                                            §§goto(addr02c2);
                                                         }
                                                      }
                                                      §§goto(addr0477);
                                                   }
                                                   §§goto(addr0288);
                                                }
                                             }
                                          }
                                          §§goto(addr0477);
                                       }
                                    }
                                    §§goto(addr023c);
                                 }
                                 §§goto(addr02c1);
                              }
                              §§goto(addr0274);
                           }
                           else
                           {
                              addr0210:
                              §§pop().rcVerification = §§pop();
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(OptionsGlobalVariables.getInstance());
                                 if(!(_loc4_ && param2))
                                 {
                                    §§push(param2);
                                    if(_loc5_)
                                    {
                                       §§goto(addr023c);
                                    }
                                    §§goto(addr0297);
                                 }
                                 §§goto(addr02c1);
                              }
                           }
                           §§goto(addr0477);
                        }
                        else
                        {
                           addr0193:
                           §§push(param2);
                           if(_loc5_)
                           {
                              §§pop().increasingSimbols = §§pop();
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§goto(addr01ab);
                              }
                              else
                              {
                                 addr02bb:
                                 §§push(OptionsGlobalVariables.getInstance());
                              }
                              §§goto(addr02c1);
                           }
                           else
                           {
                              addr0263:
                              §§pop().fasterNotification = §§pop();
                              if(_loc4_ && Boolean(this))
                              {
                                 break;
                              }
                           }
                        }
                        §§goto(addr0274);
                     case 1:
                        §§push(this.uiDataDTO);
                        if(_loc5_ || param2)
                        {
                           §§push(param2);
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              §§pop().lowGraphicsQuality = §§pop();
                              if(!_loc4_)
                              {
                                 §§push(OptionsGlobalVariables.getInstance());
                                 if(!_loc4_)
                                 {
                                    §§push(param2);
                                    if(_loc5_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          §§pop().highQuality = §§pop();
                                          if(!(_loc4_ && param2))
                                          {
                                             §§goto(addr00e9);
                                          }
                                          else
                                          {
                                             §§goto(addr02bb);
                                          }
                                       }
                                       §§goto(addr02c2);
                                    }
                                    §§goto(addr01ce);
                                 }
                                 §§goto(addr0288);
                              }
                              §§goto(addr02bb);
                           }
                           else
                           {
                              addr0147:
                              §§pop().increasingTips = §§pop();
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(OptionsGlobalVariables.getInstance());
                                 if(!_loc4_)
                                 {
                                    §§push(param2);
                                    if(!_loc4_)
                                    {
                                       §§pop().showFloater = §§pop();
                                       if(_loc4_ && Boolean(_loc3_))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr02c2);
                                    }
                                    §§goto(addr0477);
                                 }
                                 else
                                 {
                                    §§goto(addr02c1);
                                 }
                              }
                              else
                              {
                                 §§goto(addr0274);
                              }
                              §§goto(addr02c1);
                           }
                        }
                        else
                        {
                           addr025c:
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§goto(addr0263);
                           }
                           else
                           {
                              addr02aa:
                              §§pop().fullscreenActive = §§pop();
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§goto(addr02bb);
                              }
                           }
                        }
                        §§goto(addr0477);
                     case 2:
                        §§push(this.uiDataDTO);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(param2);
                           if(_loc5_ || Boolean(this))
                           {
                              §§goto(addr0147);
                           }
                           else
                           {
                              §§goto(addr0263);
                           }
                        }
                        else
                        {
                           addr02a9:
                           §§goto(addr02aa);
                           §§push(param2);
                        }
                        §§goto(addr0477);
                     case 3:
                        §§push(this.uiDataDTO);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§goto(addr0193);
                        }
                        else
                        {
                           §§goto(addr02a9);
                        }
                     case 4:
                        §§push(this.uiDataDTO);
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           §§push(param2);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§goto(addr0210);
                           }
                           else
                           {
                              §§goto(addr0263);
                           }
                        }
                        else
                        {
                           §§goto(addr025c);
                        }
                        §§goto(addr0263);
                     case 5:
                        §§push(this.uiDataDTO);
                        if(_loc5_)
                        {
                           §§goto(addr025c);
                        }
                        else
                        {
                           §§goto(addr02a9);
                        }
                     case 6:
                        §§goto(addr02a9);
                        §§push(this.uiDataDTO);
                     default:
                        §§goto(addr0477);
                  }
                  return;
               }
               §§goto(addr0361);
            }
            §§goto(addr03e5);
         }
         §§goto(addr0373);
      }
      
      private function handleServerNotification() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
         }
      }
      
      public function get uiDataDTO() : ClientUIDataDTO
      {
         return this._uiDataDTO;
      }
      
      public function set uiDataDTO(param1:ClientUIDataDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._uiDataDTO = param1;
            if(!_loc3_)
            {
               facade.sendNotification(ServerNotificationConstants.SET_USER_OPTIONS);
            }
         }
      }
      
      public function isPlayfieldItemConfigIdViewed(param1:uint) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this._uiDataDTO);
            if(_loc4_)
            {
               §§push(§§pop() == null);
               if(_loc4_ || Boolean(param1))
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr004c:
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc4_ || Boolean(param1))
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || Boolean(this))
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 addr0074:
                                 §§push(this._uiDataDTO);
                                 if(_loc4_)
                                 {
                                    addr007e:
                                    §§push(§§pop().viewedPlayfieldItemConfigIds == null);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc3_)
                                       {
                                          addr00a4:
                                          var _temp_9:* = §§pop();
                                          addr00a5:
                                          §§push(_temp_9);
                                          if(_temp_9)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr00b7:
                                                §§pop();
                                                if(_loc4_)
                                                {
                                                   addr00be:
                                                   §§push(this._uiDataDTO);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop().viewedPlayfieldItemConfigIds.indexOf(param1) == -1);
                                                      if(_loc4_)
                                                      {
                                                         addr00e0:
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§push(false);
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  addr0100:
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc3_ && Boolean(param1)))
                                                                  {
                                                                     addr0118:
                                                                     addr011c:
                                                                     if(this._uiDataDTO.viewedPlayfieldItemConfigIds == null)
                                                                     {
                                                                        if(_loc4_ || Boolean(param1))
                                                                        {
                                                                           §§goto(addr0132);
                                                                        }
                                                                     }
                                                                     §§goto(addr0139);
                                                                  }
                                                                  addr0132:
                                                               }
                                                               §§goto(addr013a);
                                                            }
                                                         }
                                                         §§goto(addr0118);
                                                      }
                                                      §§goto(addr013a);
                                                   }
                                                   §§goto(addr011c);
                                                }
                                                §§goto(addr0132);
                                             }
                                             addr013a:
                                             §§push(false);
                                             if(!_loc3_)
                                             {
                                                addr0138:
                                                _loc2_ = §§pop();
                                                addr0139:
                                                return _loc2_;
                                             }
                                          }
                                          §§goto(addr00e0);
                                       }
                                       §§goto(addr0100);
                                    }
                                    §§goto(addr0138);
                                 }
                                 §§goto(addr011c);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr0100);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr004c);
            }
            §§goto(addr007e);
         }
         §§goto(addr0074);
      }
      
      public function isQuestViewed(param1:uint) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this._uiDataDTO);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() == null);
               if(_loc3_ || _loc3_)
               {
                  §§push(!§§pop());
                  if(!_loc2_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc3_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(this._uiDataDTO);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop().viewedQuest == null);
                                    if(_loc3_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc2_)
                                       {
                                          addr008e:
                                          var _temp_8:* = §§pop();
                                          addr008f:
                                          §§push(_temp_8);
                                          if(_temp_8)
                                          {
                                             if(_loc3_ || Boolean(param1))
                                             {
                                                addr00a0:
                                                §§pop();
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§push(this._uiDataDTO);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§goto(addr00bf);
                                                   }
                                                   §§goto(addr0103);
                                                }
                                                §§goto(addr0117);
                                             }
                                          }
                                       }
                                       §§goto(addr00cf);
                                    }
                                    §§goto(addr00a0);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr0110);
                           }
                           §§goto(addr00f9);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr008f);
                  }
               }
               §§goto(addr00f9);
            }
            addr00bf:
            §§push(§§pop().viewedQuest.indexOf(param1) == -1);
            if(_loc3_)
            {
               addr00cf:
               if(§§pop())
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(false);
                     if(_loc3_ || _loc2_)
                     {
                        addr00f9:
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr00ff:
                     addr0103:
                     if(this._uiDataDTO.viewedQuest == null)
                     {
                        if(_loc3_)
                        {
                           addr0110:
                           §§push(false);
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0117:
                           §§push(true);
                        }
                        §§goto(addr0118);
                     }
                     §§goto(addr0117);
                  }
                  §§goto(addr0118);
               }
               §§goto(addr00ff);
            }
            addr0118:
            return §§pop();
         }
         §§goto(addr0110);
      }
      
      public function addPlayfieldItemConfigIdViewed(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this._uiDataDTO);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop().viewedPlayfieldItemConfigIds == null)
               {
                  if(_loc2_)
                  {
                     §§push(this._uiDataDTO);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop().viewedPlayfieldItemConfigIds = new Vector.<Number>();
                        if(_loc2_ || _loc2_)
                        {
                           addr0085:
                           this._uiDataDTO.viewedPlayfieldItemConfigIds.push(param1);
                           addr0081:
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0085);
                  }
                  addr008c:
                  return;
               }
               §§goto(addr0081);
            }
            §§goto(addr0085);
         }
         §§goto(addr0081);
      }
      
      public function addViewedQuest(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._uiDataDTO);
            if(_loc2_ || _loc2_)
            {
               if(§§pop().viewedQuest == null)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0056:
                     §§push(this._uiDataDTO);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop().viewedQuest = new Vector.<Number>();
                        if(_loc2_)
                        {
                           addr007d:
                           this._uiDataDTO.viewedQuest.push(param1);
                           addr0079:
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr007d);
                  }
                  addr0084:
                  return;
               }
               §§goto(addr0079);
            }
            §§goto(addr007d);
         }
         §§goto(addr0056);
      }
   }
}

