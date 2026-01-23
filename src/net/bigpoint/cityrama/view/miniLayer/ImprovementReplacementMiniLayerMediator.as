package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementReplacementMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class ImprovementReplacementMiniLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementReplacementMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "ImprovementReplacementMiniLayerMediator";
         if(_loc2_)
         {
            LINE_ID_0 = 0;
         }
      }
      
      private var _data:ImprovementReplacementMiniLayerVo;
      
      private var _improCursorProxy:ImprovementCursorProxy;
      
      private var _cursorAttachedImprovementCID:Number;
      
      private var _reattach:Boolean = false;
      
      public function ImprovementReplacementMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.onRegister();
            if(_loc2_)
            {
               facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
               if(!(_loc1_ && _loc2_))
               {
                  addr0067:
                  this._improCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
                  if(_loc2_)
                  {
                     if(this._improCursorProxy.currentSelectedImprovementCid != -1)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           this._cursorAttachedImprovementCID = this._improCursorProxy.currentSelectedImprovementCid;
                           if(!_loc1_)
                           {
                              addr00b3:
                              sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
                              if(_loc2_)
                              {
                                 addr00c2:
                                 this.addListener();
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr00c2);
            }
            §§goto(addr0067);
         }
         §§goto(addr00c2);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(ImprovementReplacementMiniLayer.REPLACE_IMPROVEMENT);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleReplace);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr0066:
                           §§push(this.component);
                           if(!_loc1_)
                           {
                              §§push(ImprovementReplacementMiniLayer.RENEW_IMPROVEMENT);
                              if(!_loc1_)
                              {
                                 §§pop().addEventListener(§§pop(),this.handleRenewImprovement);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr008e:
                                    §§push(this.component);
                                    if(_loc2_)
                                    {
                                       §§push(ImprovementReplacementMiniLayer.KEEP_IMPROVEMENT);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§pop().addEventListener(§§pop(),this.handleKeepImprovement);
                                          if(_loc2_)
                                          {
                                             addr00c0:
                                             §§push(this.component);
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr00d0:
                                                §§push(ImprovementReplacementMiniLayer.OPEN_TREASURY);
                                                if(_loc2_)
                                                {
                                                   addr00db:
                                                   §§pop().addEventListener(§§pop(),this.handleOpenTreasury);
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.component);
                                                      if(!_loc1_)
                                                      {
                                                         addr00f0:
                                                         §§push(ImprovementReplacementMiniLayer.OLD_IMPRO_OVER);
                                                         if(_loc2_)
                                                         {
                                                            §§pop().addEventListener(§§pop(),this.handleImprovementOver);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               addr010f:
                                                               §§push(this.component);
                                                               if(!_loc1_)
                                                               {
                                                                  addr0117:
                                                                  §§push(ImprovementReplacementMiniLayer.NEW_IMPRO_OVER);
                                                                  if(!(_loc1_ && Boolean(this)))
                                                                  {
                                                                     addr0134:
                                                                     §§pop().addEventListener(§§pop(),this.handleImprovementOver);
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        addr0151:
                                                                        this.component.addEventListener(ImprovementReplacementMiniLayer.IMPRO_OUT,this.handleImprovementOut);
                                                                        addr014b:
                                                                        addr0148:
                                                                     }
                                                                     §§goto(addr0158);
                                                                  }
                                                                  §§goto(addr0151);
                                                               }
                                                               §§goto(addr014b);
                                                            }
                                                            §§goto(addr0148);
                                                         }
                                                         §§goto(addr0151);
                                                      }
                                                      §§goto(addr014b);
                                                   }
                                                   §§goto(addr0148);
                                                }
                                                §§goto(addr0151);
                                             }
                                             §§goto(addr0117);
                                          }
                                          §§goto(addr010f);
                                       }
                                       §§goto(addr0151);
                                    }
                                    §§goto(addr00d0);
                                 }
                                 addr0158:
                                 return;
                              }
                              §§goto(addr0134);
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00f0);
               }
               §§goto(addr00c0);
            }
            §§goto(addr00f0);
         }
         §§goto(addr0066);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
      }
      
      private function handleImprovementOver(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ImprovementVo = null;
         var _loc3_:Group = null;
         if(_loc7_ || Boolean(this))
         {
            param1.stopPropagation();
         }
         var _loc5_:* = param1.type;
         if(_loc7_ || Boolean(_loc3_))
         {
            §§push(ImprovementReplacementMiniLayer.OLD_IMPRO_OVER);
            if(!_loc6_)
            {
               if(§§pop() === _loc5_)
               {
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr00cf:
                     §§push(1);
                     if(_loc7_)
                     {
                     }
                  }
                  §§goto(addr00e7);
               }
               else
               {
                  §§goto(addr00c9);
               }
            }
            addr00c9:
            if(ImprovementReplacementMiniLayer.NEW_IMPRO_OVER === _loc5_)
            {
               §§goto(addr00cf);
            }
            else
            {
               §§push(2);
            }
            addr00e7:
            switch(§§pop())
            {
               case 0:
                  _loc2_ = this._data.improvementVo;
                  _loc3_ = (param1.target as ImprovementReplacementMiniLayer).oldImprovementGroup;
                  break;
               case 1:
                  _loc2_ = this._data.newImprovement;
                  _loc3_ = (param1.target as ImprovementReplacementMiniLayer).newImprovementGroup;
            }
            var _loc4_:Point = _loc3_.localToGlobal(new Point());
            _loc4_.x += _loc3_.width / 2;
            if(_loc7_)
            {
               sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                  "cid":_loc2_.config.id,
                  "lineId":LINE_ID_0,
                  "pt":_loc4_,
                  "impro":_loc2_
               },this.getMediatorName());
            }
            return;
         }
         §§goto(addr00cf);
      }
      
      private function handleImprovementOut(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               addr002b:
               sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
            }
            return;
         }
         §§goto(addr002b);
      }
      
      private function handleKeepImprovement(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               this._reattach = true;
               if(_loc2_)
               {
                  addr003f:
                  this.handleClose(null);
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      private function handleRenewImprovement(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               addr0036:
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(_loc2_ || Boolean(this))
               {
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROLONG_PLAYFIELDITEM_IMPROVEMENT,this._data.improvementVo);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr007b:
                     this.handleClose(null);
                  }
                  return;
               }
            }
            §§goto(addr007b);
         }
         §§goto(addr0036);
      }
      
      private function handleReplace(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,{
                  "bid":this._data.buildingId,
                  "imp":this._data.newImprovement.config.id,
                  "slot":this._data.slotId
               });
               if(!_loc3_)
               {
                  addr0073:
                  this.handleClose(null);
               }
            }
            return;
         }
         §§goto(addr0073);
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            §§push(this._reattach);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  addr0036:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_ || Boolean(param1))
                        {
                           addr005b:
                           if(Boolean(param1))
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,this._cursorAttachedImprovementCID);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,true);
                                    addr0088:
                                    if(_loc2_ || Boolean(param1))
                                    {
                                       addr00c1:
                                       facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                                    }
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr0088);
                           }
                           else
                           {
                              sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,false);
                              if(!_loc3_)
                              {
                                 §§goto(addr00c1);
                              }
                           }
                        }
                        §§goto(addr00cf);
                     }
                  }
               }
               §§goto(addr005b);
            }
            §§goto(addr0036);
         }
         addr00cf:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRemove();
            if(!_loc1_)
            {
               this.removeListener();
            }
         }
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§push(ImprovementReplacementMiniLayer.REPLACE_IMPROVEMENT);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop().removeEventListener(§§pop(),this.handleReplace);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(this.component);
                           if(_loc1_ || _loc2_)
                           {
                              addr0075:
                              §§push(ImprovementReplacementMiniLayer.RENEW_IMPROVEMENT);
                              if(_loc1_ || _loc1_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleRenewImprovement);
                                 if(!_loc2_)
                                 {
                                    addr0095:
                                    §§push(this.component);
                                    if(_loc1_)
                                    {
                                       §§push(ImprovementReplacementMiniLayer.KEEP_IMPROVEMENT);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§pop().removeEventListener(§§pop(),this.handleKeepImprovement);
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§push(this.component);
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr00df:
                                                §§push(ImprovementReplacementMiniLayer.OLD_IMPRO_OVER);
                                                if(!_loc2_)
                                                {
                                                   §§pop().removeEventListener(§§pop(),this.handleImprovementOver);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(this.component);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         §§push(ImprovementReplacementMiniLayer.NEW_IMPRO_OVER);
                                                         if(_loc1_)
                                                         {
                                                            addr0119:
                                                            §§pop().removeEventListener(§§pop(),this.handleImprovementOver);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               addr012d:
                                                               §§push(this.component);
                                                               if(_loc1_)
                                                               {
                                                                  addr0135:
                                                                  §§push(ImprovementReplacementMiniLayer.IMPRO_OUT);
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     addr0152:
                                                                     §§pop().removeEventListener(§§pop(),this.handleImprovementOut);
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        addr016f:
                                                                        this.component.removeEventListener(ImprovementReplacementMiniLayer.OPEN_TREASURY,this.handleOpenTreasury);
                                                                        addr0169:
                                                                        addr0166:
                                                                     }
                                                                     §§goto(addr0177);
                                                                  }
                                                                  §§goto(addr016f);
                                                               }
                                                               §§goto(addr0169);
                                                            }
                                                            §§goto(addr0166);
                                                         }
                                                         §§goto(addr016f);
                                                      }
                                                      §§goto(addr0135);
                                                   }
                                                   §§goto(addr0177);
                                                }
                                                §§goto(addr0119);
                                             }
                                             §§goto(addr0135);
                                          }
                                          §§goto(addr012d);
                                       }
                                       §§goto(addr016f);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr012d);
                              }
                              §§goto(addr0152);
                           }
                           §§goto(addr00df);
                        }
                        addr0177:
                        return;
                     }
                     §§goto(addr0152);
                  }
                  §§goto(addr00df);
               }
               §§goto(addr0166);
            }
            §§goto(addr0075);
         }
         §§goto(addr0095);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PlayerResourceProxy = null;
         var _loc3_:* = param1.getName();
         if(_loc5_)
         {
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc3_)
            {
               addr00aa:
               §§push(0);
               if(_loc4_ && Boolean(_loc3_))
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
                  if(this._data)
                  {
                     if(_loc5_)
                     {
                        _loc2_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           this._data.realCurrency = _loc2_.realCurrency;
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              this.component.data = this._data;
                           }
                        }
                     }
                  }
            }
            return;
         }
         §§goto(addr00aa);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 is ImprovementReplacementMiniLayerVo)
            {
               if(_loc3_ || _loc3_)
               {
                  addr004c:
                  this._data = param1 as ImprovementReplacementMiniLayerVo;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0062:
                     this.component.data = this._data;
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0062);
            }
            addr006b:
            return;
         }
         §§goto(addr004c);
      }
      
      public function get component() : ImprovementReplacementMiniLayer
      {
         return super.viewComponent as ImprovementReplacementMiniLayer;
      }
   }
}

