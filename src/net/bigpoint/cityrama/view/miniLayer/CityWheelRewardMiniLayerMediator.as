package net.bigpoint.cityrama.view.miniLayer
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.CityWheelRewardLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CityWheelRewardMiniLayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityWheelRewardMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CityWheelRewardMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "CityWheelRewardMiniLayerMediator";
      }
      
      private var _data:CityWheelRewardLayerVo;
      
      private var _gcP:GameConfigProxy;
      
      public function CityWheelRewardMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super(NAME,param2);
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
            if(_loc1_)
            {
               facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
               if(_loc1_ || _loc1_)
               {
                  this.addListener();
               }
            }
         }
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(_loc2_ || _loc2_)
            {
               §§pop().addEventListener(CityWheelRewardMiniLayer.COLLECT_REWARDS,this.handleCollectRewards);
               if(!(_loc1_ && _loc2_))
               {
                  addr0054:
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     §§pop().addEventListener(Event.CLOSE,this.handleClose);
                     if(!_loc1_)
                     {
                        §§push(this.component);
                        if(_loc2_)
                        {
                           §§pop().rewardItemList.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.uiInfoLayerOverHandler);
                           if(_loc2_)
                           {
                              addr009b:
                              this.component.rewardItemList.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.uiInfoLayerOutHandler);
                              addr0097:
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr009b);
               }
               addr00ac:
               return;
            }
            §§goto(addr009b);
         }
         §§goto(addr0054);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      private function uiInfoLayerOverHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = NaN;
         var _loc2_:Point = param1.target.localToGlobal(new Point());
         if(_loc5_)
         {
            _loc2_.x += param1.target.width / 2;
         }
         §§push(param1.callerType);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc4_ == ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION)
         {
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               §§push(this.configProxy.getFirstLevelConfigOfBuilding(this.configProxy.getConfigPlayfieldItemsByPermissionId(param1.cid)[0].id).id);
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        addr00e0:
                        sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                           "cid":_loc3_,
                           "lineId":0,
                           "pt":_loc2_,
                           "type":_loc4_
                        },NAME);
                     }
                  }
                  else
                  {
                     addr00d1:
                     _loc3_ = §§pop();
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§goto(addr00e0);
                     }
                  }
                  return;
               }
               §§goto(addr00d1);
            }
            §§goto(addr00e0);
         }
         else
         {
            §§push(param1.cid);
            if(!_loc6_)
            {
               §§push(§§pop());
            }
         }
         §§goto(addr00d1);
      }
      
      private function uiInfoLayerOutHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function handleCollectRewards(param1:Event) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:Point = null;
         var _loc4_:DropIconVO = null;
         var _loc5_:DropInfoVo = null;
         if(_loc8_ || _loc2_)
         {
            param1.stopPropagation();
            if(_loc8_)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
         }
         var _loc2_:* = 0;
         if(_loc8_)
         {
            if(this._data)
            {
               addr005b:
               _loc3_ = new Point(this.component.width / 2,this.component.height / 2);
               _loc3_ = this.component.localToGlobal(_loc3_);
               if(_loc8_)
               {
                  §§push(this._data);
                  if(!_loc9_)
                  {
                     if(§§pop().rewardDrops)
                     {
                        if(_loc8_)
                        {
                           addr00a2:
                           addr009e:
                           if(this._data.rewardDrops.length > 0)
                           {
                              addr00ad:
                              for each(_loc5_ in this._data.rewardDrops)
                              {
                                 if(_loc5_.type == ServerOutputConstants.GOOD)
                                 {
                                    _loc4_ = new DropIconVO(_loc5_.gfxId.toString(),_loc3_);
                                    if(!_loc9_)
                                    {
                                       TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                                       if(_loc8_)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc9_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() + 0.1);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop());
                                             }
                                          }
                                          _loc2_ = §§pop();
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc4_ = new DropIconVO(_loc5_.type,_loc3_);
                                    if(!(_loc9_ && Boolean(param1)))
                                    {
                                       TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                                       if(!(_loc8_ || Boolean(this)))
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(_loc2_);
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop() + 0.1);
                                       if(_loc8_ || Boolean(this))
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                           §§goto(addr01b2);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr01b2);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr009e);
            }
            addr01b2:
            TweenMax.delayedCall(_loc2_,this.handleClose);
            return;
         }
         §§goto(addr005b);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().removeEventListener(CityWheelRewardMiniLayer.COLLECT_REWARDS,this.handleCollectRewards);
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0050:
                  this.component.removeEventListener(Event.CLOSE,this.handleClose);
               }
               §§goto(addr005c);
            }
            §§goto(addr0050);
         }
         addr005c:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CityWheelProxy = null;
         if(_loc3_ || Boolean(this))
         {
            this.removeListener();
            if(_loc3_)
            {
               if(this._data)
               {
                  if(!_loc2_)
                  {
                     addr004a:
                     _loc1_ = facade.retrieveProxy(CityWheelProxy.NAME) as CityWheelProxy;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.lastCollectedRewards = this._data.drawnRewardsAsVector;
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0098);
               }
               addr0080:
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_COLLECT);
               if(!(_loc2_ && _loc2_))
               {
                  addr0098:
                  super.onRemove();
               }
               return;
            }
         }
         §§goto(addr004a);
      }
      
      private function get component() : CityWheelRewardMiniLayer
      {
         return super.viewComponent as CityWheelRewardMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(param1 is CityWheelRewardLayerVo)
            {
               if(!_loc3_)
               {
                  addr003b:
                  this._data = param1 as CityWheelRewardLayerVo;
                  if(_loc2_)
                  {
                     this.component.data = this._data.drawnRewards;
                  }
               }
            }
            return;
         }
         §§goto(addr003b);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._gcP);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0041:
                     this._gcP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._gcP;
            }
         }
         §§goto(addr0041);
      }
   }
}

