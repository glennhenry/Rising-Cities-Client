package net.bigpoint.cityrama.model.popup
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PopupProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PopupProxy";
      
      private var _modalCount:int = 0;
      
      private var _popupReferences:Dictionary;
      
      public function PopupProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._popupReferences = new Dictionary(true);
         this._popupReferences[PopupSettingsVo.MINI_POPUP] = new Vector.<PopupSettingsVo>();
         this._popupReferences[PopupSettingsVo.PAPER_POPUP] = new Vector.<PopupSettingsVo>();
         this._popupReferences[PopupSettingsVo.FEATURE_POPUP] = new Vector.<PopupSettingsVo>();
         this._popupReferences[PopupSettingsVo.STACK_POPUP] = new Vector.<PopupSettingsVo>();
         this._modalCount = 0;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
      }
      
      public function getPopupSettings(param1:String) : PopupSettingsVo
      {
         var _loc2_:PopupSettingsVo = null;
         var _loc3_:Vector.<PopupSettingsVo> = null;
         var _loc4_:int = 0;
         for each(_loc3_ in this._popupReferences)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_ = _loc3_[_loc4_];
               if(_loc2_.mediatorName == param1)
               {
                  return _loc2_;
               }
               _loc4_++;
            }
         }
         return null;
      }
      
      public function addPopupSettings(param1:PopupSettingsVo) : void
      {
         switch(param1.type)
         {
            case PopupSettingsVo.STACK_POPUP:
               this.handleAddStackPopup(param1);
               break;
            default:
               this.handleDefaultPopup(param1);
         }
      }
      
      private function handleAddStackPopup(param1:PopupSettingsVo) : void
      {
         this._popupReferences[param1.type].push(param1);
         if(param1.modal)
         {
            ++this._modalCount;
         }
         if(this._popupReferences[param1.type].length == 1)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_EXECUTE,param1);
         }
      }
      
      private function handleDefaultPopup(param1:PopupSettingsVo) : void
      {
         this._popupReferences[param1.type].push(param1);
         if(param1.modal)
         {
            ++this._modalCount;
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_EXECUTE,param1);
      }
      
      public function removePopupSettings(param1:String) : PopupSettingsVo
      {
         var _loc2_:PopupSettingsVo = this.getPopupSettingsVoByMediatorName(param1);
         if(_loc2_)
         {
            switch(_loc2_.type)
            {
               case PopupSettingsVo.STACK_POPUP:
                  this.removeStackPopup(_loc2_);
                  break;
               default:
                  this.removeDefaultPopup(_loc2_);
            }
         }
         return _loc2_;
      }
      
      private function removeStackPopup(param1:PopupSettingsVo) : void
      {
         if(param1.modal)
         {
            --this._modalCount;
         }
         var _loc2_:Vector.<PopupSettingsVo> = this._popupReferences[param1.type];
         var _loc3_:int = int(_loc2_.indexOf(param1));
         if(_loc3_ == -1)
         {
            throw new Error("Popup was not found in the stack");
         }
         if(_loc3_ != 0)
         {
            throw new Error("Popup is not the first popup in the stack");
         }
         this._popupReferences[param1.type].shift();
         if(this._popupReferences[param1.type].length)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_EXECUTE,this._popupReferences[param1.type][0]);
         }
      }
      
      private function removeDefaultPopup(param1:PopupSettingsVo) : void
      {
         if(param1.modal)
         {
            --this._modalCount;
         }
         var _loc2_:Vector.<PopupSettingsVo> = this._popupReferences[param1.type];
         var _loc3_:int = int(_loc2_.indexOf(param1));
         if(_loc3_ != -1)
         {
            this._popupReferences[param1.type].splice(_loc3_,1);
         }
      }
      
      private function getPopupSettingsVoByMediatorName(param1:String) : PopupSettingsVo
      {
         var _loc3_:Vector.<PopupSettingsVo> = null;
         var _loc4_:int = 0;
         for each(_loc3_ in this._popupReferences)
         {
            _loc4_ = int(_loc3_.length - 1);
            while(_loc4_ >= 0)
            {
               if(_loc3_[_loc4_].mediatorName == param1)
               {
                  var _loc2_:PopupSettingsVo = _loc3_[_loc4_];
               }
               _loc4_--;
            }
         }
         return null;
      }
      
      public function isModalPopupOpened() : Boolean
      {
         return this._modalCount > 0;
      }
      
      public function get popupReferences() : Dictionary
      {
         return this._popupReferences;
      }
      
      public function get isPopupOpen() : Boolean
      {
         var _loc1_:Vector.<PopupSettingsVo> = null;
         if(this.isModalPopupOpened())
         {
            return true;
         }
         for each(_loc1_ in this.popupReferences)
         {
            if(Boolean(_loc1_) && Boolean(_loc1_.length))
            {
               return true;
            }
         }
         return false;
      }
   }
}

