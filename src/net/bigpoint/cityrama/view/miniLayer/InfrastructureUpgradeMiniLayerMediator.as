package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.InfraUpgradeMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.InfrastructureUpgradeMiniLayer;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class InfrastructureUpgradeMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "InfrastructureUpgradeMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && InfrastructureUpgradeMiniLayerMediator))
      {
         NAME = "InfrastructureUpgradeMiniLayerMediator";
      }
      
      private var _data:InfraUpgradeMiniLayerVo;
      
      public function InfrastructureUpgradeMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§pop().addEventListener(Event.CLOSE,this.finalCall);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this.component);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(InfrastructureUpgradeMiniLayer.START_UPGRADE);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.onUpgrade);
                        if(_loc2_)
                        {
                           addr0083:
                           §§push(this.component);
                           if(_loc2_)
                           {
                              addr008b:
                              §§push(InfrastructureUpgradeMiniLayer.START_INSTA_UPGRADE);
                              if(!_loc1_)
                              {
                                 §§goto(addr0096);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr00a2);
                     }
                     addr0096:
                     §§pop().addEventListener(§§pop(),this.component_START_INSTA_UPGRADEHandler);
                     if(!_loc1_)
                     {
                        addr00ab:
                        this.component.addEventListener(InfrastructureUpgradeMiniLayer.OPEN_RC_REBUY,this.component_OPEN_RC_REBUYHandler);
                        addr00a5:
                        addr00a2:
                     }
                     return;
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0083);
            }
            §§goto(addr008b);
         }
         §§goto(addr00a2);
      }
      
      private function component_OPEN_RC_REBUYHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,[ServerResConst.RESOURCE_REALCURRENCY]);
         }
      }
      
      private function component_START_INSTA_UPGRADEHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            if(_loc3_ || _loc2_)
            {
               facade.sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._data.billboardObjVo.buildingDTO.id);
               if(!_loc2_)
               {
                  addr0056:
                  this.finalCall();
               }
               §§goto(addr005b);
            }
            §§goto(addr0056);
         }
         addr005b:
      }
      
      private function onUpgrade(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0036:
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(!(_loc3_ && _loc3_))
               {
                  facade.sendNotification(ApplicationNotificationConstants.UPGRADE_BILLBOARD_BUILDING,this._data.billboardObjVo);
                  if(!_loc3_)
                  {
                     addr0066:
                     this.finalCall();
                  }
                  return;
               }
            }
            §§goto(addr0066);
         }
         §§goto(addr0036);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  if(_loc2_ && Boolean(param1))
                  {
                  }
               }
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
            }
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            RandomUtilities.removestackCall(this.updateData);
            if(!_loc2_)
            {
               addr0025:
               this.removeListener();
               if(!_loc2_)
               {
                  super.onRemove();
               }
            }
            return;
         }
         §§goto(addr0025);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(InfrastructureUpgradeMiniLayer.START_INSTA_UPGRADE);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().removeEventListener(§§pop(),this.component_START_INSTA_UPGRADEHandler);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.component);
                     if(_loc1_ || _loc1_)
                     {
                        addr006e:
                        §§push(InfrastructureUpgradeMiniLayer.OPEN_RC_REBUY);
                        if(_loc1_ || _loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.component_OPEN_RC_REBUYHandler);
                           if(_loc1_)
                           {
                              addr0097:
                              §§push(this.component);
                              if(_loc1_ || _loc1_)
                              {
                                 §§pop().removeEventListener(Event.CLOSE,this.finalCall);
                                 if(_loc1_)
                                 {
                                    addr00c1:
                                    this.component.removeEventListener(InfrastructureUpgradeMiniLayer.START_UPGRADE,this.onUpgrade);
                                    addr00bb:
                                    addr00b8:
                                 }
                                 return;
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr00c1);
            }
            §§goto(addr006e);
         }
         §§goto(addr0097);
      }
      
      public function get component() : InfrastructureUpgradeMiniLayer
      {
         return super.viewComponent as InfrastructureUpgradeMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 is InfraUpgradeMiniLayerVo)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0038:
                  this._data = param1 as InfraUpgradeMiniLayerVo;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     this.component.data = this._data;
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!_loc4_)
         {
            §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(_loc2_);
               if(_loc3_ || Boolean(this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr00a8:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr00bf);
                  }
                  else
                  {
                     §§goto(addr00a4);
                  }
               }
               addr00a4:
               §§goto(addr00a3);
            }
            addr00a3:
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
            {
               §§goto(addr00a8);
            }
            else
            {
               §§push(2);
            }
            addr00bf:
            switch(§§pop())
            {
               case 0:
               case 1:
                  RandomUtilities.addstackCall(this.updateData);
                  if(_loc3_ || Boolean(param1))
                  {
                  }
            }
            return;
         }
         §§goto(addr00a8);
      }
      
      private function updateData() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         if(!(_loc3_ && Boolean(this)))
         {
            this.setData(_loc1_.getInfraUpgradeVo(this._data.billboardObjVo));
         }
      }
   }
}

