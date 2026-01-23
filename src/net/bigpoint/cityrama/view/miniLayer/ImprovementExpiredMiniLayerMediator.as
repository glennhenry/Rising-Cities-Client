package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementExpiredMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementExpiredMiniLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementExpiredMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "ImprovementExpiredMiniLayerMediator";
         if(_loc1_)
         {
            LINE_ID_0 = 0;
         }
      }
      
      private var _data:ImprovementMiniLayerVo;
      
      public function ImprovementExpiredMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.onRegister();
            if(!(_loc1_ && Boolean(this)))
            {
               facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
               if(!_loc1_)
               {
                  addr0079:
                  this.addListener();
               }
            }
            return;
         }
         §§goto(addr0079);
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc1_)
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     §§push(ImprovementExpiredMiniLayer.REMOVE_IMPROVEMENT);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleRemove);
                        if(!_loc1_)
                        {
                           addr005f:
                           §§push(this.component);
                           if(_loc2_)
                           {
                              §§push(ImprovementExpiredMiniLayer.RENEW_IMPROVEMENT);
                              if(!_loc1_)
                              {
                                 addr007c:
                                 §§pop().addEventListener(§§pop(),this.handleRenew);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(this.component);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr00a0:
                                       §§push(ImprovementExpiredMiniLayer.OPEN_TREASURY);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§pop().addEventListener(§§pop(),this.handleOpenTreasury);
                                          if(!_loc1_)
                                          {
                                             addr00c0:
                                             §§push(this.component);
                                             if(!_loc1_)
                                             {
                                                addr00d2:
                                                §§push(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§goto(addr00e5);
                                                }
                                                §§goto(addr00fb);
                                             }
                                             §§goto(addr00f5);
                                          }
                                          §§goto(addr00f2);
                                       }
                                       §§goto(addr00e5);
                                    }
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00c0);
                              }
                              addr00e5:
                              §§pop().addEventListener(§§pop(),this.handleImprovementOver);
                              if(_loc2_)
                              {
                                 addr00fb:
                                 this.component.addEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
                                 addr00f5:
                                 addr00f2:
                              }
                              return;
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr00f5);
               }
               §§goto(addr005f);
            }
            §§goto(addr00d2);
         }
         §§goto(addr00f2);
      }
      
      private function handleImprovementOut(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleImprovementOver(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            param1.stopPropagation();
         }
         §§push(this._data.improvementVo.config.id);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:ImprovementInfoMiniLayerComponent = param1.target as ImprovementInfoMiniLayerComponent;
         var _loc4_:Point = _loc3_.improvementGroup.localToGlobal(new Point());
         _loc4_.x += _loc3_.improvementGroup.width / 2;
         if(_loc6_)
         {
            sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
               "cid":_loc2_,
               "lineId":LINE_ID_0,
               "pt":_loc4_,
               "impro":this._data.improvementVo
            },this.getMediatorName());
         }
      }
      
      private function handleRenew(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               addr002d:
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(_loc2_)
               {
                  §§goto(addr003f);
               }
               §§goto(addr0056);
            }
            addr003f:
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROLONG_PLAYFIELDITEM_IMPROVEMENT,this._data.improvementVo);
            if(_loc2_)
            {
               addr0056:
               this.handleClose(null);
            }
            return;
         }
         §§goto(addr002d);
      }
      
      private function handleRemove(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(_loc3_ || Boolean(param1))
            {
               addr0034:
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_DELETE_PLAYFIELDITEM_IMPROVEMENT,this._data.improvementVo);
               if(_loc3_ || Boolean(this))
               {
                  this.handleClose(null);
               }
            }
            return;
         }
         §§goto(addr0034);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRemove();
            if(!_loc2_)
            {
               this.removeListener();
            }
         }
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     addr0041:
                     §§push(ImprovementExpiredMiniLayer.REMOVE_IMPROVEMENT);
                     if(_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleRemove);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr006b:
                           §§push(this.component);
                           if(!_loc1_)
                           {
                              §§push(ImprovementExpiredMiniLayer.RENEW_IMPROVEMENT);
                              if(_loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleRenew);
                                 if(!_loc1_)
                                 {
                                    addr0093:
                                    this.component.removeEventListener(ImprovementExpiredMiniLayer.OPEN_TREASURY,this.handleOpenTreasury);
                                    addr008d:
                                    addr008a:
                                 }
                                 §§goto(addr009b);
                              }
                              §§goto(addr0093);
                           }
                           §§goto(addr008d);
                        }
                        addr009b:
                        return;
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr008a);
            }
            §§goto(addr0041);
         }
         §§goto(addr006b);
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
         if(!_loc4_)
         {
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc3_)
            {
               addr00b2:
               §§push(0);
               if(_loc5_)
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
                     if(_loc5_ || Boolean(param1))
                     {
                        _loc2_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           this._data.realCurrency = _loc2_.realCurrency;
                           if(!(_loc5_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                        }
                        this.component.data = this._data;
                     }
                  }
            }
            return;
         }
         §§goto(addr00b2);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 is ImprovementMiniLayerVo)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._data = param1 as ImprovementMiniLayerVo;
                  if(!_loc2_)
                  {
                     this.component.data = this._data;
                  }
               }
            }
         }
      }
      
      public function get component() : ImprovementExpiredMiniLayer
      {
         return super.viewComponent as ImprovementExpiredMiniLayer;
      }
   }
}

