package net.bigpoint.cityrama.model.friends.vo
{
   public class CenterItemFriendDataVo
   {
      
      private var _friendVO:FriendVo;
      
      private var _buyEnabled:Boolean;
      
      private var _showPlus:Boolean;
      
      private var _showButton:Boolean;
      
      private var _buttonEventString:String;
      
      public function CenterItemFriendDataVo()
      {
         super();
      }
      
      public function get friendVO() : FriendVo
      {
         return this._friendVO;
      }
      
      public function set friendVO(param1:FriendVo) : void
      {
         this._friendVO = param1;
      }
      
      public function get showPlus() : Boolean
      {
         return this._showPlus;
      }
      
      public function set showPlus(param1:Boolean) : void
      {
         this._showPlus = param1;
      }
      
      public function get buyEnabled() : Boolean
      {
         return this._buyEnabled;
      }
      
      public function set buyEnabled(param1:Boolean) : void
      {
         this._buyEnabled = param1;
      }
      
      public function get showButton() : Boolean
      {
         return this._showButton;
      }
      
      public function set showButton(param1:Boolean) : void
      {
         this._showButton = param1;
      }
      
      public function get buttonEventString() : String
      {
         return this._buttonEventString;
      }
      
      public function set buttonEventString(param1:String) : void
      {
         this._buttonEventString = param1;
      }
   }
}

