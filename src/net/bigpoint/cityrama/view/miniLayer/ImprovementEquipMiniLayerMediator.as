package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementEquipMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementEquipMiniLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementEquipMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ImprovementEquipMiniLayerMediator";
         if(!(_loc1_ && ImprovementEquipMiniLayerMediator))
         {
            addr002a:
            LINE_ID_0 = 0;
         }
         return;
      }
      §§goto(addr002a);
      
      private var _data:ImprovementMiniLayerVo;
      
      private var _improCursorProxy:ImprovementCursorProxy;
      
      private var _cursorAttachedImprovementCID:Number;
      
      public function ImprovementEquipMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
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
            if(_loc2_ || _loc1_)
            {
               §§push(facade);
               §§push(§§findproperty(UserInterfaceInfoLayerMediator));
               §§pop().registerMediator(new §§pop().UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
               if(_loc2_)
               {
                  this._improCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
                  if(_loc2_)
                  {
                     addr007e:
                     if(this._improCursorProxy.currentSelectedImprovementCid != -1)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr00a2:
                           this._cursorAttachedImprovementCID = this._improCursorProxy.currentSelectedImprovementCid;
                           if(_loc2_ || _loc1_)
                           {
                              sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
                              if(!_loc1_)
                              {
                                 addr00ca:
                                 this.addListener();
                              }
                           }
                           §§goto(addr00d0);
                        }
                     }
                     §§goto(addr00ca);
                  }
                  addr00d0:
                  return;
               }
               §§goto(addr00ca);
            }
            §§goto(addr007e);
         }
         §§goto(addr00a2);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || Boolean(this))
               {
                  §§push(this.component);
                  if(_loc2_)
                  {
                     §§push(ImprovementEquipMiniLayer.EQUIP_IMPROVEMENT);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleEquip);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.component);
                           if(_loc2_ || Boolean(this))
                           {
                              addr008b:
                              §§push(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER);
                              if(!_loc1_)
                              {
                                 addr0096:
                                 §§pop().addEventListener(§§pop(),this.handleImprovementOver);
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr00b4:
                                    this.component.addEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
                                    addr00ae:
                                    addr00ab:
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr00ab);
            }
            §§goto(addr00ae);
         }
         addr00bc:
      }
      
      private function handleImprovementOut(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleImprovementOver(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(param1))
         {
            param1.stopPropagation();
         }
         §§push(this._data.improvementVo.config.id);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:ImprovementInfoMiniLayerComponent = param1.target as ImprovementInfoMiniLayerComponent;
         var _loc4_:Point = _loc3_.improvementGroup.localToGlobal(new Point());
         _loc4_.x += _loc3_.improvementGroup.width / 2;
         if(!_loc6_)
         {
            sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
               "cid":_loc2_,
               "lineId":LINE_ID_0,
               "pt":_loc4_,
               "impro":this._data.improvementVo
            },this.getMediatorName());
         }
      }
      
      private function handleEquip(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,{
                  "bid":this._data.buildingId,
                  "imp":this._data.improvementVo.config.id,
                  "slot":this._data.slotId
               });
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr007c:
                  this.handleClose(null);
               }
               §§goto(addr0082);
            }
            §§goto(addr007c);
         }
         addr0082:
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_ || _loc2_)
               {
                  sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,this._cursorAttachedImprovementCID);
                  addr0029:
                  if(!_loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,true);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0081:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                     }
                  }
               }
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,false);
               if(_loc2_)
               {
                  §§goto(addr0081);
               }
            }
            return;
         }
         §§goto(addr0029);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.onRemove();
            if(_loc2_)
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
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || _loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc1_ || Boolean(this))
               {
                  §§push(this.component);
                  if(_loc1_)
                  {
                     §§push(ImprovementEquipMiniLayer.EQUIP_IMPROVEMENT);
                     if(_loc1_ || _loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleEquip);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this.component);
                           if(_loc1_ || Boolean(this))
                           {
                              addr0088:
                              §§push(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER);
                              if(_loc1_ || _loc1_)
                              {
                                 addr00a5:
                                 §§pop().removeEventListener(§§pop(),this.handleImprovementOver);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00c3:
                                    this.component.removeEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
                                    addr00bd:
                                    addr00ba:
                                 }
                                 §§goto(addr00cb);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00bd);
               }
               addr00cb:
               return;
            }
            §§goto(addr0088);
         }
         §§goto(addr00ba);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 is ImprovementMiniLayerVo)
            {
               if(!_loc3_)
               {
                  this._data = param1 as ImprovementMiniLayerVo;
                  if(_loc2_)
                  {
                     addr003d:
                     this.component.data = this._data;
                  }
               }
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function get component() : ImprovementEquipMiniLayer
      {
         return super.viewComponent as ImprovementEquipMiniLayer;
      }
   }
}

