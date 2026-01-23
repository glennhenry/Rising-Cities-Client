package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.miniLayer.ui.NextLevelMiniLayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class LevelPreviewMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "LevelPreviewMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "LevelPreviewMiniLayerMediator";
      }
      
      private var _levelProxy:UserLevelProxy;
      
      public function LevelPreviewMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,param2);
            if(!_loc3_)
            {
               this._levelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
               if(_loc4_ || Boolean(param1))
               {
                  this.setLayerData();
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0078:
                     this.setListener();
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr0078);
         }
         addr007e:
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:LevelUpVo = null;
         var _loc1_:ConfigUserLevelDTO = this._levelProxy.getConfigByLevelId(this._levelProxy.currentLevelId);
         var _loc2_:ConfigUserLevelDTO = this._levelProxy.getNextFullLevel(_loc1_.id);
         if(!_loc5_)
         {
            if(_loc2_)
            {
               addr0045:
               §§push(this._levelProxy);
               if(_loc4_ || Boolean(_loc1_))
               {
                  §§push(_loc2_.id);
                  if(_loc4_)
                  {
                     §§push(RewardItemComponentVo.SIZE_SMALL);
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop().getLevelUpVoById(§§pop(),§§pop()));
                        if(!_loc5_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc5_)
                           {
                              addr00b9:
                              if(_loc3_)
                              {
                                 if(_loc4_ || Boolean(_loc1_))
                                 {
                                    this.component.setData(_loc3_);
                                 }
                              }
                           }
                           return;
                        }
                        addr00b5:
                        _loc3_ = §§pop();
                        §§goto(addr00b9);
                     }
                     else
                     {
                        addr00b1:
                        §§push(§§pop().getLevelUpVoById(§§pop(),§§pop()));
                     }
                     §§goto(addr00b5);
                  }
                  else
                  {
                     addr00ab:
                     §§push(RewardItemComponentVo.SIZE_SMALL);
                  }
                  §§goto(addr00b1);
               }
               else
               {
                  addr00a8:
                  §§push(_loc1_.id);
               }
               §§goto(addr00ab);
            }
            else
            {
               §§push(this._levelProxy);
            }
            §§goto(addr00a8);
         }
         §§goto(addr0045);
      }
      
      private function setListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§pop().okButton.addEventListener(MouseEvent.CLICK,this.onButtonClicked);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(this.component);
                  if(_loc2_)
                  {
                     §§pop().addEventListener(Event.CLOSE,this.handleClose);
                     if(!_loc1_)
                     {
                        addr0065:
                        facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§push(this.component);
                           if(_loc2_)
                           {
                              §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                              if(_loc2_ || _loc1_)
                              {
                                 §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr00df:
                                    this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                    addr00d9:
                                    addr00d6:
                                 }
                                 §§goto(addr00e7);
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00d6);
                     }
                     addr00e7:
                     return;
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr00d6);
            }
            §§goto(addr00d9);
         }
         §§goto(addr0065);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      private function onButtonClicked(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            if(_loc2_)
            {
               addr002c:
               this.handleClose();
            }
            return;
         }
         §§goto(addr002c);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
               if(!_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.component);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr006d:
                        §§pop().removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                        if(_loc1_ || _loc1_)
                        {
                           addr0082:
                           §§push(this.component);
                           if(_loc1_ || _loc1_)
                           {
                              §§pop().okButton.removeEventListener(MouseEvent.CLICK,this.onButtonClicked);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00d4);
                     }
                     addr00bb:
                     this.component.addEventListener(Event.CLOSE,this.handleClose);
                     §§goto(addr00b8);
                  }
                  addr00b8:
                  if(_loc1_ || Boolean(this))
                  {
                     addr00d4:
                     super.onRemove();
                  }
                  return;
               }
               §§goto(addr006d);
            }
            §§goto(addr00bb);
         }
         §§goto(addr0082);
      }
      
      public function get component() : NextLevelMiniLayer
      {
         return super.viewComponent as NextLevelMiniLayer;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.cid);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc5_)
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
   }
}

