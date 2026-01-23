package net.bigpoint.cityrama.model.rewards.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   
   public class RewardDataVo
   {
      
      public static const LEVELUP:String = "LEVELUP";
      
      public static const PAYMENTPACK:String = "PAYMENTPACK";
      
      public static const EVOUCHER:String = "EVOUCHER";
      
      private var _styleName:String;
      
      private var _title:String;
      
      private var _flavourText:String;
      
      private var _buttonText:String;
      
      private var _buttonTooltip:String;
      
      private var _receivedItems:ArrayCollection;
      
      private var _drops:Vector.<DropInfoVo>;
      
      private var _rewardType:String;
      
      public function RewardDataVo()
      {
         super();
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function get buttonText() : String
      {
         return this._buttonText;
      }
      
      public function get receivedItems() : ArrayCollection
      {
         return this._receivedItems;
      }
      
      public function get styleName() : String
      {
         return this._styleName;
      }
      
      public function set styleName(param1:String) : void
      {
         this._styleName = param1;
      }
      
      public function set title(param1:String) : void
      {
         this._title = param1;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function set buttonText(param1:String) : void
      {
         this._buttonText = param1;
      }
      
      public function set receivedItems(param1:ArrayCollection) : void
      {
         this._receivedItems = param1;
      }
      
      public function get buttonTooltip() : String
      {
         return this._buttonTooltip;
      }
      
      public function set buttonTooltip(param1:String) : void
      {
         this._buttonTooltip = param1;
      }
      
      public function get rewardType() : String
      {
         return this._rewardType;
      }
      
      public function set rewardType(param1:String) : void
      {
         this._rewardType = param1;
      }
      
      public function get drops() : Vector.<DropInfoVo>
      {
         return this._drops;
      }
      
      public function set drops(param1:Vector.<DropInfoVo>) : void
      {
         this._drops = param1;
      }
   }
}

