package net.bigpoint.cityrama.view.cursor
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.FieldCursorProxy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CursorMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CursorMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "CursorMediator";
      }
      
      private var _fieldCursorProxy:FieldCursorProxy;
      
      private var _applicationModeProxy:ApplicationModeProxy;
      
      public function CursorMediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(param1)))
            {
               this._fieldCursorProxy = FieldCursorProxy(facade.retrieveProxy(FieldCursorProxy.NAME));
               if(_loc3_)
               {
                  addr0065:
                  this._applicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
               }
               return;
            }
         }
         §§goto(addr0065);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,ApplicationNotificationConstants.APPLICATION_CURSOR_INIT,ApplicationNotificationConstants.DETACH_GFX_FROM_CURSOR,ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_)
         {
            §§push(ApplicationNotificationConstants.DETACH_GFX_FROM_CURSOR);
            if(_loc3_ || Boolean(this))
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr0125:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr015b:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR);
                     if(_loc3_)
                     {
                        addr013b:
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§goto(addr015b);
                              }
                              else
                              {
                                 addr019d:
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    addr017f:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr019d);
                                       }
                                       else
                                       {
                                          addr01b3:
                                          §§push(3);
                                          if(_loc4_ && _loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr01d3);
                                    }
                                    else
                                    {
                                       §§goto(addr01af);
                                    }
                                 }
                                 addr01af:
                                 §§goto(addr01ae);
                              }
                              addr01ae:
                              if(ApplicationNotificationConstants.APPLICATION_CURSOR_INIT === _loc2_)
                              {
                                 §§goto(addr01b3);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr01d3);
                           }
                           §§goto(addr01d3);
                        }
                        §§goto(addr017f);
                     }
                     §§goto(addr01ae);
                  }
                  addr01d3:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                        §§push(param1.getBody() is String);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           var _temp_8:* = §§pop();
                           §§push(_temp_8);
                           if(_temp_8)
                           {
                              if(_loc3_)
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    addr004c:
                                    §§push(param1.getBody() == "");
                                    if(_loc3_)
                                    {
                                       addr004b:
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          this.setCursorByMode(param1.getBody() as String);
                                          if(_loc3_ || _loc3_)
                                          {
                                          }
                                       }
                                       break;
                                    }
                                    this.setCursorByMode(this._applicationModeProxy.mode);
                                    if(_loc4_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr004b);
                           }
                        }
                        §§goto(addr004c);
                     case 2:
                        §§push(this._fieldCursorProxy);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(FieldCursorProxy.CURSOR_ATTACHED_ITEM);
                           if(!_loc4_)
                           {
                              §§pop().invokeCursor(§§pop());
                              if(_loc3_ || Boolean(param1))
                              {
                              }
                              break;
                           }
                        }
                        else
                        {
                           addr00cc:
                           §§push(FieldCursorProxy.CURSOR_NORMAL);
                        }
                        §§pop().invokeCursor(§§pop());
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                        break;
                     case 3:
                        §§goto(addr00cc);
                        §§push(this._fieldCursorProxy);
                  }
                  return;
               }
               §§goto(addr01af);
            }
            §§goto(addr013b);
         }
         §§goto(addr0125);
      }
      
      private function setCursorByMode(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(_loc3_)
         {
            §§push(FieldCursorProxy.CURSOR_RESET);
            if(_loc3_ || Boolean(this))
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
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
                        addr0281:
                        §§push(5);
                        if(_loc3_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr02a0);
                  }
                  else
                  {
                     §§push(ApplicationModeProxy.MODE_NORMAL);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(1);
                                 if(_loc4_ && _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0222:
                                 §§push(3);
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationModeProxy.MODE_DESTROY);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 addr01cc:
                                 §§push(_loc2_);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    addr01da:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          addr01eb:
                                          §§push(2);
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0222);
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationModeProxy.MODE_MOVE);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             addr0218:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr0222);
                                                }
                                                else
                                                {
                                                   §§goto(addr0281);
                                                }
                                             }
                                             else
                                             {
                                                §§push(ApplicationModeProxy.MODE_BUILD);
                                                if(_loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_ || Boolean(_loc2_))
                                                   {
                                                      addr024e:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(4);
                                                            if(_loc4_ && Boolean(_loc2_))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0281);
                                                         }
                                                         §§goto(addr02a0);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr027d);
                                                      }
                                                   }
                                                   addr027d:
                                                }
                                                §§goto(addr027c);
                                             }
                                             §§goto(addr0281);
                                          }
                                          §§goto(addr027d);
                                       }
                                       addr027c:
                                       if(ApplicationModeProxy.MODE_IMPROVEMENT === _loc2_)
                                       {
                                          §§goto(addr0281);
                                       }
                                       else
                                       {
                                          §§push(6);
                                       }
                                       §§goto(addr02a0);
                                    }
                                    §§goto(addr02a0);
                                 }
                                 §§goto(addr024e);
                              }
                              §§goto(addr027c);
                           }
                           addr02a0:
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(this._fieldCursorProxy);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§pop().resetCursor();
                                    if(_loc3_ || Boolean(param1))
                                    {
                                    }
                                    break;
                                 }
                                 addr00ef:
                                 §§push(FieldCursorProxy.CURSOR_NORMAL);
                                 if(_loc3_)
                                 {
                                    addr00fa:
                                    §§pop().invokeCursor(§§pop());
                                    if(_loc3_)
                                    {
                                    }
                                    break;
                                 }
                                 addr0112:
                                 §§pop().invokeCursor(§§pop());
                                 if(_loc4_ && Boolean(param1))
                                 {
                                 }
                                 break;
                              case 1:
                                 §§push(this._fieldCursorProxy);
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    §§push(FieldCursorProxy.CURSOR_NORMAL);
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       §§pop().invokeCursor(§§pop());
                                       if(_loc3_)
                                       {
                                       }
                                       break;
                                    }
                                    addr00c8:
                                    §§pop().invokeCursor(§§pop());
                                    if(_loc3_ || Boolean(this))
                                    {
                                    }
                                    break;
                                 }
                                 §§goto(addr00ef);
                                 break;
                              case 2:
                                 §§push(this._fieldCursorProxy);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    §§push(FieldCursorProxy.CURSOR_DEMOLISH);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§pop().invokeCursor(§§pop());
                                       if(_loc4_)
                                       {
                                       }
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr00bd:
                                    §§push(FieldCursorProxy.CURSOR_MOVE);
                                    if(_loc3_)
                                    {
                                       §§goto(addr00c8);
                                    }
                                 }
                                 §§goto(addr00fa);
                              case 3:
                                 §§push(this._fieldCursorProxy);
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    §§goto(addr00bd);
                                 }
                                 else
                                 {
                                    §§goto(addr00ef);
                                 }
                              case 4:
                                 §§push(this._fieldCursorProxy);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr00ef);
                                 }
                                 else
                                 {
                                    addr010c:
                                    §§push(FieldCursorProxy.CURSOR_IMPROVEMENT);
                                 }
                                 §§goto(addr0112);
                              case 5:
                                 §§goto(addr010c);
                                 §§push(this._fieldCursorProxy);
                           }
                           return;
                        }
                        §§goto(addr0218);
                     }
                     §§goto(addr027c);
                  }
               }
               §§goto(addr01da);
            }
            §§goto(addr01cc);
         }
         §§goto(addr01eb);
      }
   }
}

