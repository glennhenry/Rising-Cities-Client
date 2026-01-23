package net.bigpoint.cityrama.view.optionsmenu
{
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.OptionsDetailViewVo;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsListItemVo;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.optionsmenu.ui.components.OptionsItemRenderer;
   import net.bigpoint.cityrama.view.optionsmenu.ui.components.OptionsMenuPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.CheckBox;
   
   public class OptionsMenuPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "OptionsMenuPopupMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "OptionsMenuPopupMediator";
      }
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _layerData:OptionsDetailViewVo;
      
      public function OptionsMenuPopupMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            super(param1,param2);
            if(_loc5_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc5_)
               {
                  addr003e:
                  this._serverStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(this.component);
                     if(!_loc4_)
                     {
                        §§pop().addEventListener(Event.CLOSE,this.handleClose);
                        if(!_loc4_)
                        {
                           addr0087:
                           §§push(this.component);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr0098:
                              §§push(OptionsItemRenderer.EVENT_ITEM_SELECTION_CHANGED);
                              if(!_loc4_)
                              {
                                 §§pop().addEventListener(§§pop(),this.handleItemChanged);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    addr00cd:
                                    this.component.addEventListener(OptionsItemRenderer.EVENT_EDIT_ACCOUNT,this.handleEditAccount);
                                    addr00c7:
                                    addr00c4:
                                 }
                                 var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
                                 if(!_loc4_)
                                 {
                                    this.setData(_loc3_.getOptionsDetails());
                                 }
                                 return;
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr00c4);
            }
            §§goto(addr003e);
         }
         §§goto(addr0087);
      }
      
      private function handleEditAccount(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         §§push(_loc2_.profileUri);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != "")
            {
               if(_loc5_ || Boolean(param1))
               {
                  navigateToURL(new URLRequest(_loc3_),"_top");
               }
            }
         }
      }
      
      private function handleItemChanged(param1:Event) : void
      {
         var _loc2_:CheckBox = param1.target.checkBox as CheckBox;
         var _loc3_:OptionsListItemVo = OptionsListItemVo(param1.target.data);
         var _loc4_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         _loc4_.updateState(_loc3_.locaID,_loc2_.selected);
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.component);
            if(_loc3_ || _loc3_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(_loc3_ || Boolean(this))
                  {
                     addr005c:
                     §§push(OptionsItemRenderer.EVENT_ITEM_SELECTION_CHANGED);
                     if(_loc3_ || Boolean(this))
                     {
                        §§pop().removeEventListener(§§pop(),this.handleItemChanged);
                        if(!_loc2_)
                        {
                           this.component.removeEventListener(OptionsItemRenderer.EVENT_EDIT_ACCOUNT,this.handleEditAccount);
                           addr0084:
                           addr007e:
                           if(!_loc2_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00b5);
                        }
                        addr009a:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                        if(_loc3_ || _loc2_)
                        {
                           addr00b5:
                           facade.sendNotification(ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS,this.mediatorName);
                        }
                        return;
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr00b5);
            }
            §§goto(addr005c);
         }
         §§goto(addr00b5);
      }
      
      override public function getMediatorName() : String
      {
         return super.mediatorName;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._layerData = param1 as OptionsDetailViewVo;
            if(_loc3_ || Boolean(param1))
            {
               addr003b:
               this.component.data = this._layerData;
            }
            return;
         }
         §§goto(addr003b);
      }
      
      public function get component() : OptionsMenuPopup
      {
         return super.viewComponent as OptionsMenuPopup;
      }
   }
}

