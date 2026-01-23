package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.*;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class NoPermissionsLeftMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "NoPermissionsLeftMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || NoPermissionsLeftMiniLayerMediator)
      {
         NAME = "NoPermissionsLeftMiniLayerMediator";
      }
      
      private var _data:BlueprintVo;
      
      private var _objectToBuildVo:IGameObjectVo;
      
      public function NoPermissionsLeftMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
            if(_loc3_)
            {
               §§push(this.component);
               if(_loc3_)
               {
                  §§pop().buyButton.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
                  if(!(_loc4_ && Boolean(param2)))
                  {
                     addr0057:
                     this.component.addEventListener(Event.CLOSE,this.finalCall);
                     addr0054:
                  }
                  return;
               }
               §§goto(addr0057);
            }
         }
         §§goto(addr0054);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr0049);
            }
            §§goto(addr0053);
         }
         addr0049:
         if(param1)
         {
            if(_loc3_)
            {
               addr0053:
               this.resetMode();
            }
         }
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FieldBuildProxy = null;
         if(_loc4_ || _loc3_)
         {
            if(this._data.userCanAfford)
            {
               if(!(_loc3_ && _loc3_))
               {
                  StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                  if(_loc4_)
                  {
                     addr0053:
                     _loc2_ = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_.buildAndBuyPermission = true;
                        if(_loc4_)
                        {
                           addr008a:
                           facade.sendNotification(ApplicationNotificationConstants.BUILD_GAMEOBJECT,{
                              "obj":this._objectToBuildVo,
                              "priceRC":this._data.priceRC
                           });
                           if(_loc4_)
                           {
                              facade.sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{
                                 "config":this._data.configObj,
                                 "buyPermission":false
                              });
                              if(_loc4_)
                              {
                                 addr00d9:
                                 this.finalCall();
                              }
                              §§goto(addr010b);
                           }
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr008a);
                  }
               }
            }
            else
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(!(_loc3_ && Boolean(param1)))
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
               }
            }
            addr010b:
            return;
         }
         §§goto(addr0053);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PlayerResourceProxy = null;
         var _loc3_:* = param1.getName();
         if(!(_loc5_ && Boolean(param1)))
         {
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc3_)
            {
               addr00bc:
               §§push(0);
               if(_loc4_ || Boolean(_loc2_))
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
                     if(_loc4_ || Boolean(this))
                     {
                        _loc2_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                        if(_loc4_ || Boolean(this))
                        {
                           this._data.userRC = _loc2_.realCurrency;
                           if(!(_loc4_ || Boolean(param1)))
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
         §§goto(addr00bc);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(_loc2_ || _loc2_)
               {
                  addr0056:
                  this.component.buyButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
                  if(_loc2_ || _loc2_)
                  {
                     super.onRemove();
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr0056);
         }
         addr0078:
      }
      
      private function resetMode() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.mode = ApplicationModeProxy.MODE_NORMAL;
         }
      }
      
      public function get component() : NoPermissionsLeftMiniLayer
      {
         return super.viewComponent as NoPermissionsLeftMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(Boolean(param1.blueprint));
            if(!(_loc3_ && _loc3_))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(param1.blueprint is BlueprintVo);
                           if(_loc2_)
                           {
                              addr004d:
                              if(§§pop())
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    this._data = param1.blueprint as BlueprintVo;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(this._data)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.component.data = this._data;
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00a8:
                                                §§push(Boolean(param1.vo));
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr00ba:
                                                   var _temp_7:* = §§pop();
                                                   addr00bb:
                                                   §§push(_temp_7);
                                                   if(_temp_7)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr00d4);
                                                      }
                                                   }
                                                   §§goto(addr00e2);
                                                }
                                                addr00d4:
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   addr00e2:
                                                   addr00da:
                                                   if(param1.vo is IGameObjectVo)
                                                   {
                                                      if(!(_loc3_ && Boolean(param1)))
                                                      {
                                                         this._objectToBuildVo = param1.vo as IGameObjectVo;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr0100);
                                          }
                                       }
                                       §§goto(addr00a8);
                                    }
                                    §§goto(addr0100);
                                 }
                                 §§goto(addr00da);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr00ba);
                        }
                        addr0100:
                        return;
                     }
                  }
                  §§goto(addr004d);
               }
               §§goto(addr00bb);
            }
            §§goto(addr004d);
         }
         §§goto(addr00da);
      }
   }
}

