package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import com.greensock.TweenMax;
   import com.greensock.data.TweenMaxVars;
   import com.greensock.easing.Expo;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.view.cursor.AttachImprovementToCursorCommand;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickForImprovementCommand extends SimpleCommand
   {
      
      private var _playfieldInteractiveProxy:PlayfieldInteractiveProxy;
      
      private var _improvementCursorProxy:ImprovementCursorProxy;
      
      public function FieldClickForImprovementCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:IImprovable = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:BillboardObject = null;
         var _loc6_:GameConfigProxy = null;
         var _loc7_:* = null;
         var _loc8_:TweenMaxVars = null;
         var _loc9_:Number = NaN;
         if(_loc11_)
         {
            this._playfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
            if(_loc11_)
            {
               addr0058:
               §§push(this._playfieldInteractiveProxy);
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  §§push(§§pop().clickObject);
                  if(_loc11_)
                  {
                     §§push(§§pop() == null);
                     if(_loc11_ || Boolean(_loc2_))
                     {
                        §§push(!§§pop());
                        if(_loc11_)
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(_loc11_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§pop();
                                    if(_loc11_)
                                    {
                                       §§push(this._playfieldInteractiveProxy);
                                       if(!(_loc10_ && Boolean(param1)))
                                       {
                                          §§push(§§pop().clickObject);
                                          if(!(_loc10_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() as BillboardObject == null);
                                             if(_loc11_)
                                             {
                                                addr00d0:
                                                §§push(!§§pop());
                                                if(_loc11_)
                                                {
                                                   addr00d7:
                                                   var _temp_7:* = §§pop();
                                                   §§push(_temp_7);
                                                   §§push(_temp_7);
                                                   if(!_loc10_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                         {
                                                            §§pop();
                                                            if(_loc11_ || Boolean(this))
                                                            {
                                                               §§push(this._playfieldInteractiveProxy);
                                                               if(!(_loc10_ && Boolean(_loc2_)))
                                                               {
                                                                  addr0111:
                                                                  §§push(§§pop().clickObject);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push((§§pop() as BillboardObject).billboardObjectVo);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop() is IImprovable);
                                                                        if(!(_loc10_ && Boolean(param1)))
                                                                        {
                                                                           addr0137:
                                                                           var _temp_12:* = §§pop();
                                                                           §§push(_temp_12);
                                                                           §§push(_temp_12);
                                                                           if(!(_loc10_ && Boolean(this)))
                                                                           {
                                                                              addr0146:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc10_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc10_ && Boolean(param1)))
                                                                                    {
                                                                                       addr0167:
                                                                                       §§push(this._playfieldInteractiveProxy);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(§§pop().clickObject);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push((§§pop() as BillboardObject).billboardObjectVo);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop().isUnderConstruction());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr018f:
                                                                                                   §§push(!§§pop());
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr0196:
                                                                                                      var _temp_16:* = §§pop();
                                                                                                      §§push(_temp_16);
                                                                                                      §§push(_temp_16);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc10_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr01af:
                                                                                                               §§pop();
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(this._playfieldInteractiveProxy);
                                                                                                                  if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     addr01c8:
                                                                                                                     §§push(§§pop().clickObject);
                                                                                                                     if(_loc11_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§push((§§pop() as BillboardObject).billboardObjectVo);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr01e4:
                                                                                                                           §§push(§§pop().hasEmergency());
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(_loc11_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 addr01fd:
                                                                                                                                 var _temp_21:* = §§pop();
                                                                                                                                 §§push(_temp_21);
                                                                                                                                 §§push(_temp_21);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addr0204:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc11_ || Boolean(param1))
                                                                                                                                       {
                                                                                                                                          addr0216:
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             addr021d:
                                                                                                                                             §§push(this._playfieldInteractiveProxy);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr0227:
                                                                                                                                                §§push(§§pop().clickObject);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr0230:
                                                                                                                                                   §§push((§§pop() as BillboardObject).billboardObjectVo);
                                                                                                                                                   if(_loc11_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      addr0243:
                                                                                                                                                      §§push(§§pop().isConnectedToStreet);
                                                                                                                                                      if(_loc11_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         addr0254:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr025b:
                                                                                                                                                            var _temp_25:* = §§pop();
                                                                                                                                                            addr025c:
                                                                                                                                                            §§push(_temp_25);
                                                                                                                                                            if(_temp_25)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  addr027c:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this._playfieldInteractiveProxy);
                                                                                                                                                                     if(_loc11_ || Boolean(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr029d:
                                                                                                                                                                        §§push(§§pop().clickObject);
                                                                                                                                                                        if(_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           addr02a6:
                                                                                                                                                                           §§push((§§pop() as BillboardObject).billboardObjectVo);
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr02c3);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr02d3);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr02ce);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02cb);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr02c7);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02c3);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr027c);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02d3);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02a6);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02cb);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02c7);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02c3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr025b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr025c);
                                                                                                                              }
                                                                                                                              addr02c3:
                                                                                                                              §§goto(addr02b1);
                                                                                                                           }
                                                                                                                           §§goto(addr0216);
                                                                                                                        }
                                                                                                                        addr02b1:
                                                                                                                        §§push(§§pop().isExpansionObject);
                                                                                                                        if(_loc11_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           addr02c2:
                                                                                                                           §§push(!§§pop());
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr02d3:
                                                                                                                           _loc2_ = (this._playfieldInteractiveProxy.clickObject as BillboardObject).billboardObjectVo as IImprovable;
                                                                                                                           addr02ce:
                                                                                                                           addr02cb:
                                                                                                                           addr02c7:
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              this._improvementCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
                                                                                                                              if(!(_loc10_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§push(this._improvementCursorProxy.currentSelectedImprovementCid);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          addr0326:
                                                                                                                                          §§push(this._playfieldInteractiveProxy);
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().clickObject);
                                                                                                                                             if(_loc11_ || Boolean(param1))
                                                                                                                                             {
                                                                                                                                                §§push((§§pop() as BillboardObject).billboardObjectVo.buildingDTO.id);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr0358:
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0369);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr037d);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr0369:
                                                                                                                                                addr0368:
                                                                                                                                                if(_loc3_ != -1)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && Boolean(param1)))
                                                                                                                                                   {
                                                                                                                                                      addr037d:
                                                                                                                                                      if(_loc2_.numFreeImprovementSlots > 0)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ && Boolean(param1)))
                                                                                                                                                         {
                                                                                                                                                            addr039d:
                                                                                                                                                            _loc5_ = this._playfieldInteractiveProxy.clickObject as BillboardObject;
                                                                                                                                                            _loc6_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                                                                                                                                                            addr039a:
                                                                                                                                                            if(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               §§push(ConfigImprovementDTO(_loc6_.config.improvements[_loc3_]).quality);
                                                                                                                                                               if(_loc11_ || Boolean(_loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                               }
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                            }
                                                                                                                                                            _loc8_ = new TweenMaxVars();
                                                                                                                                                            _loc8_.glowFilter(20,20,AttachImprovementToCursorCommand.getColorByQuality(_loc7_),1);
                                                                                                                                                            if(_loc11_ || Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               _loc8_.ease(Expo.easeInOut);
                                                                                                                                                               if(_loc11_ || Boolean(param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc8_.repeat(1);
                                                                                                                                                                  if(_loc11_ || Boolean(param1))
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_.yoyo(true);
                                                                                                                                                                     if(_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_.container.filters = [];
                                                                                                                                                                        if(_loc11_ || Boolean(_loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr0465:
                                                                                                                                                                           TweenMax.killTweensOf(_loc5_.container);
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0476:
                                                                                                                                                                              TweenMax.to(_loc5_.container,1,_loc8_);
                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr048b:
                                                                                                                                                                                 _loc9_ = _loc2_.freeImprovementSlots[0].id;
                                                                                                                                                                                 if(_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr04a1:
                                                                                                                                                                                    sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,{
                                                                                                                                                                                       "bid":_loc4_,
                                                                                                                                                                                       "imp":_loc3_,
                                                                                                                                                                                       "slot":_loc9_
                                                                                                                                                                                    });
                                                                                                                                                                                    if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr04ca:
                                                                                                                                                                                       sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
                                                                                                                                                                                       if(_loc11_ || Boolean(param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr04ee:
                                                                                                                                                                                          (this._playfieldInteractiveProxy.clickObject as BillboardObject).invalidateIconStateManager();
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0524);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04ee);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04a1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr048b);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0476);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0524);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr04ca);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0465);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr048b);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         sendNotification(ApplicationNotificationConstants.OPEN_HIP_POPUP,_loc4_);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   sendNotification(ApplicationNotificationConstants.OPEN_HIP_POPUP,_loc4_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0524);
                                                                                                                                             }
                                                                                                                                             §§goto(addr039d);
                                                                                                                                          }
                                                                                                                                          §§goto(addr039a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0524);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0358);
                                                                                                                              }
                                                                                                                              §§goto(addr0368);
                                                                                                                           }
                                                                                                                           §§goto(addr0326);
                                                                                                                        }
                                                                                                                        addr0524:
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr0230);
                                                                                                                  }
                                                                                                                  §§goto(addr029d);
                                                                                                               }
                                                                                                               §§goto(addr02c7);
                                                                                                            }
                                                                                                            §§goto(addr027c);
                                                                                                         }
                                                                                                         §§goto(addr01fd);
                                                                                                      }
                                                                                                      §§goto(addr025c);
                                                                                                   }
                                                                                                   §§goto(addr01af);
                                                                                                }
                                                                                                §§goto(addr0216);
                                                                                             }
                                                                                             §§goto(addr0243);
                                                                                          }
                                                                                          §§goto(addr02a6);
                                                                                       }
                                                                                       §§goto(addr029d);
                                                                                    }
                                                                                    §§goto(addr021d);
                                                                                 }
                                                                                 §§goto(addr018f);
                                                                              }
                                                                              §§goto(addr0196);
                                                                           }
                                                                           §§goto(addr025c);
                                                                        }
                                                                        §§goto(addr0254);
                                                                     }
                                                                     §§goto(addr01e4);
                                                                  }
                                                                  §§goto(addr02a6);
                                                               }
                                                               §§goto(addr0227);
                                                            }
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr02c2);
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                   §§goto(addr0204);
                                                }
                                                §§goto(addr02c2);
                                             }
                                             §§goto(addr00d7);
                                          }
                                          §§goto(addr02a6);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0167);
                                 }
                                 §§goto(addr00d0);
                              }
                              §§goto(addr00d7);
                           }
                           §§goto(addr0146);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr0216);
                  }
                  §§goto(addr0230);
               }
               §§goto(addr01c8);
            }
            §§goto(addr02c7);
         }
         §§goto(addr0058);
      }
   }
}

