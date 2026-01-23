package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldExpansionBuyVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ExpansionMiniLayerVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ExpansionMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ExpansionMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ExpansionMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "ExpansionMiniLayerMediator";
      }
      
      private var _expansionFieldObject:ExpansionFieldObject;
      
      public function ExpansionMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         var _loc2_:ExpansionFieldObjectVo = this._expansionFieldObject.billboardObjectVo as ExpansionFieldObjectVo;
         var _loc3_:ExpansionMiniLayerVo = _loc1_.getExpansionVo(_loc2_);
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            this.component.setData(_loc3_);
         }
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().buyExpansion.addEventListener(MouseEvent.CLICK,this.onExpansionBought);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(this.component);
                  if(_loc2_)
                  {
                     §§push(§§pop().ddButton);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().addEventListener(MouseEvent.CLICK,this.onDDBuy);
                        if(!_loc1_)
                        {
                           §§push(this.component);
                           if(_loc2_ || _loc2_)
                           {
                              addr007d:
                              §§push(§§pop().ddButton);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 addr008d:
                                 §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.onDDOver);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr00a6:
                                    §§push(this.component);
                                    if(!_loc1_)
                                    {
                                       §§goto(addr00bb);
                                    }
                                    §§goto(addr00d7);
                                 }
                                 §§goto(addr00d4);
                              }
                              addr00bb:
                              §§pop().ddButton.addEventListener(MouseEvent.MOUSE_OUT,this.onDDOut);
                              §§goto(addr00b8);
                           }
                           addr00b8:
                           if(_loc2_ || _loc1_)
                           {
                              addr00d7:
                              this.component.addEventListener(Event.CLOSE,this.finalCall);
                              addr00d4:
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr00d4);
            }
            §§goto(addr00d7);
         }
         addr00e3:
      }
      
      private function onDDOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(!_loc3_)
            {
               §§pop().buyExpansion.visible = true;
               if(_loc2_)
               {
                  addr0043:
                  this.component.instantDDText.visible = false;
                  addr0040:
               }
               return;
            }
            §§goto(addr0043);
         }
         §§goto(addr0040);
      }
      
      private function onDDOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().buyExpansion.visible = false;
               if(!_loc2_)
               {
                  addr0042:
                  this.component.instantDDText.visible = true;
                  addr003f:
               }
               return;
            }
            §§goto(addr0042);
         }
         §§goto(addr003f);
      }
      
      private function onDDBuy(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ExpansionFieldObjectVo = null;
         var _loc3_:PlayfieldExpansionBuyVo = null;
         if(_loc4_ || Boolean(param1))
         {
            if(!this.component.ddButton.showPlus)
            {
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc2_ = this._expansionFieldObject.billboardObjectVo as ExpansionFieldObjectVo;
                     _loc3_ = new PlayfieldExpansionBuyVo();
                     if(!_loc5_)
                     {
                        _loc3_.expansion = _loc2_;
                        if(_loc4_)
                        {
                           _loc3_.cpe = _loc2_.configPlayfieldItemVo.id;
                           if(!_loc5_)
                           {
                              _loc3_.pp = true;
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00e7);
                           }
                           addr00c5:
                           this.addMockPhases(this._expansionFieldObject,true);
                           if(_loc4_)
                           {
                              facade.sendNotification(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,_loc3_);
                              if(_loc4_)
                              {
                                 addr00e7:
                                 this.finalCall();
                              }
                           }
                        }
                        §§goto(addr00ff);
                     }
                     §§goto(addr00c5);
                  }
               }
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
         addr00ff:
      }
      
      private function onExpansionBought(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         }
         var _loc2_:ExpansionFieldObjectVo = this._expansionFieldObject.billboardObjectVo as ExpansionFieldObjectVo;
         var _loc3_:PlayfieldExpansionBuyVo = new PlayfieldExpansionBuyVo();
         if(_loc4_ || Boolean(_loc3_))
         {
            _loc3_.expansion = _loc2_;
            if(!_loc5_)
            {
               _loc3_.cpe = _loc2_.configPlayfieldItemVo.id;
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  addr007b:
                  _loc3_.pp = false;
                  if(_loc4_)
                  {
                     this.addMockPhases(this._expansionFieldObject,false);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§goto(addr00ac);
                     }
                  }
                  §§goto(addr00bd);
               }
               addr00ac:
               facade.sendNotification(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,_loc3_);
               if(!_loc5_)
               {
                  addr00bd:
                  this.finalCall();
               }
               return;
            }
            §§goto(addr007b);
         }
         §§goto(addr00bd);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.component);
            if(_loc3_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(_loc3_)
               {
                  §§push(this.component);
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§pop().buyExpansion.removeEventListener(MouseEvent.CLICK,this.onExpansionBought);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.component);
                        if(_loc3_)
                        {
                           addr0079:
                           §§push(§§pop().ddButton);
                           if(!_loc2_)
                           {
                              §§pop().removeEventListener(MouseEvent.CLICK,this.onDDBuy);
                              if(_loc3_)
                              {
                                 addr0092:
                                 §§push(this.component);
                                 if(_loc3_)
                                 {
                                    addr009a:
                                    §§push(§§pop().ddButton);
                                    if(_loc3_)
                                    {
                                       §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.onDDOver);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr00ce);
                                       }
                                       §§goto(addr00e7);
                                    }
                                    addr00ce:
                                    this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onDDOut);
                                    §§goto(addr00cb);
                                 }
                                 addr00cb:
                                 §§goto(addr00c8);
                              }
                              addr00c8:
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00e7:
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0092);
            }
            §§goto(addr0079);
         }
         addr00f5:
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 is ExpansionFieldObject)
            {
               if(_loc3_ || _loc3_)
               {
                  this._expansionFieldObject = param1 as ExpansionFieldObject;
                  if(_loc3_ || _loc2_)
                  {
                     addr0062:
                     this.setLayerData();
                     if(_loc3_ || _loc3_)
                     {
                        this.addListener();
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0062);
            }
            addr007b:
            return;
         }
         §§goto(addr0062);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRegister();
            if(_loc2_)
            {
               sendNotification(VirtualTaskNotificationInterest.MINILAYER_BUYEXPANSION_OPENED);
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
            super.onRemove();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.component);
               if(!_loc2_)
               {
                  §§pop().buyExpansion.removeEventListener(MouseEvent.CLICK,this.onExpansionBought);
                  if(!_loc2_)
                  {
                     addr0043:
                     §§push(this.component);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(§§pop().ddButton);
                        if(_loc1_ || _loc1_)
                        {
                           §§pop().removeEventListener(MouseEvent.CLICK,this.onDDBuy);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.component);
                              if(!_loc2_)
                              {
                                 addr008e:
                                 §§push(§§pop().ddButton);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.onDDOver);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr00c7);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 addr00c7:
                                 this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onDDOut);
                                 §§goto(addr00c4);
                              }
                              addr00c4:
                              §§goto(addr00c1);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr008e);
            }
            §§goto(addr0043);
         }
         addr00c1:
         if(_loc1_)
         {
            addr00d8:
            sendNotification(VirtualTaskNotificationInterest.MINILAYER_BUYEXPANSION_CLOSED);
         }
      }
      
      public function get component() : ExpansionMiniLayer
      {
         return super.viewComponent as ExpansionMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENTS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_)
         {
            §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_ || Boolean(_loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr00df:
                        §§push(2);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                     §§goto(addr00fe);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || Boolean(param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(1);
                                 if(_loc4_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr00df);
                              }
                              §§goto(addr00fe);
                           }
                           else
                           {
                              §§goto(addr00db);
                           }
                        }
                        addr00db:
                     }
                     §§goto(addr00da);
                  }
               }
               §§goto(addr00db);
            }
            addr00da:
            if(ApplicationNotificationConstants.EVENTS_CHANGED === _loc2_)
            {
               §§goto(addr00df);
            }
            else
            {
               §§push(3);
            }
            addr00fe:
            switch(§§pop())
            {
               case 0:
               case 1:
               case 2:
                  this.refresh();
                  if(_loc3_ || _loc3_)
                  {
                  }
            }
            return;
         }
         §§goto(addr00df);
      }
      
      private function refresh() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.setLayerData();
         }
      }
      
      private function addMockPhases(param1:ExpansionFieldObject, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc7_:Object = null;
         var _loc8_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:PlayfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         var _loc5_:ConfigPhaseDTO = new ConfigPhaseDTO(null);
         var _loc6_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         _loc7_ = {};
         _loc7_.t = ServerOutputConstants.RESOURCE;
         if(_loc10_ || Boolean(_loc3_))
         {
            _loc7_.cid = _loc3_.config.resourceIds[ServerResConst.RESOURCE_EXPERIENCE];
            if(_loc10_ || Boolean(_loc3_))
            {
               _loc7_.o = _loc4_.getExpansionXP(param1.expansionFieldObjectVo.configOrigin);
            }
         }
         _loc8_ = new ConfigOutputDTO(_loc7_);
         _loc8_.resourceConfig = _loc3_.config.resources[_loc7_.cid];
         if(_loc10_)
         {
            _loc6_.push(_loc8_);
         }
         _loc7_ = {};
         _loc7_.t = ServerOutputConstants.RESOURCE;
         if(_loc10_)
         {
            if(param2)
            {
               if(!(_loc9_ && Boolean(this)))
               {
                  _loc7_.cid = _loc3_.config.resourceIds[ServerResConst.RESOURCE_REALCURRENCY];
                  if(!_loc9_)
                  {
                     addr0129:
                     _loc7_.o = -_loc4_.getRCExpansionCosts(param1.expansionFieldObjectVo.configOrigin);
                     if(_loc9_)
                     {
                        addr0160:
                        _loc7_.o = -_loc4_.getVCExpansionCosts(param1.expansionFieldObjectVo.configOrigin);
                     }
                  }
                  addr0174:
                  _loc8_ = new ConfigOutputDTO(_loc7_);
                  _loc8_.resourceConfig = _loc3_.config.resources[_loc7_.cid];
                  if(_loc10_ || Boolean(param1))
                  {
                     _loc6_.push(_loc8_);
                     if(_loc10_ || Boolean(param1))
                     {
                        addr01bf:
                        _loc5_.listEntryOutputs = _loc6_;
                        if(_loc10_)
                        {
                           param1.expansionFieldObjectVo.informationFloaterPhase = _loc5_;
                        }
                     }
                     return;
                  }
                  §§goto(addr01bf);
               }
               §§goto(addr0129);
            }
            else
            {
               _loc7_.cid = _loc3_.config.resourceIds[ServerResConst.RESOURCE_VIRTUALCURRENCY];
               if(!_loc9_)
               {
                  §§goto(addr0160);
               }
            }
         }
         §§goto(addr0174);
      }
   }
}

