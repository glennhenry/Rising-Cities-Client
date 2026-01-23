package net.bigpoint.cityrama.model.miniLayer.vo
{
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   
   public class InfraUpgradeMiniLayerVo
   {
      
      private var _title:String;
      
      private var _flavourText:String;
      
      private var _headerText:String;
      
      private var _upgradeCosts:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>(0);
      
      private var _upgradeCostsAffordable:Vector.<Boolean> = new Vector.<Boolean>(0);
      
      private var _instantRCCost:Number;
      
      private var _userRCStock:Number;
      
      private var _affordable:Boolean = false;
      
      private var _startBtnLabel:String;
      
      private var _startBtnTooltip:String;
      
      private var _abortBtnLabel:String;
      
      private var _abortBtnTooltip:String;
      
      private var _billboardObjVo:BillboardObjectVo;
      
      public function InfraUpgradeMiniLayerVo()
      {
         super();
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function set title(param1:String) : void
      {
         this._title = param1;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function get headerText() : String
      {
         return this._headerText;
      }
      
      public function set headerText(param1:String) : void
      {
         this._headerText = param1;
      }
      
      public function get affordable() : Boolean
      {
         return this._upgradeCostsAffordable.indexOf(false) == -1;
      }
      
      public function set affordable(param1:Boolean) : void
      {
         this._affordable = param1;
      }
      
      public function get startBtnLabel() : String
      {
         return this._startBtnLabel;
      }
      
      public function set startBtnLabel(param1:String) : void
      {
         this._startBtnLabel = param1;
      }
      
      public function get startBtnTooltip() : String
      {
         return this._startBtnTooltip;
      }
      
      public function set startBtnTooltip(param1:String) : void
      {
         this._startBtnTooltip = param1;
      }
      
      public function get abortBtnLabel() : String
      {
         return this._abortBtnLabel;
      }
      
      public function set abortBtnLabel(param1:String) : void
      {
         this._abortBtnLabel = param1;
      }
      
      public function get abortBtnTooltip() : String
      {
         return this._abortBtnTooltip;
      }
      
      public function set abortBtnTooltip(param1:String) : void
      {
         this._abortBtnTooltip = param1;
      }
      
      public function get billboardObjVo() : BillboardObjectVo
      {
         return this._billboardObjVo;
      }
      
      public function set billboardObjVo(param1:BillboardObjectVo) : void
      {
         this._billboardObjVo = param1;
      }
      
      public function get upgradeCosts() : Vector.<ConfigOutputDTO>
      {
         return this._upgradeCosts;
      }
      
      public function set upgradeCosts(param1:Vector.<ConfigOutputDTO>) : void
      {
         this._upgradeCosts = param1;
      }
      
      public function get instantRCCost() : Number
      {
         return this._instantRCCost;
      }
      
      public function set instantRCCost(param1:Number) : void
      {
         this._instantRCCost = param1;
      }
      
      public function get userRCStock() : Number
      {
         return this._userRCStock;
      }
      
      public function set userRCStock(param1:Number) : void
      {
         this._userRCStock = param1;
      }
      
      public function get upgradeCostsAffordable() : Vector.<Boolean>
      {
         return this._upgradeCostsAffordable;
      }
      
      public function set upgradeCostsAffordable(param1:Vector.<Boolean>) : void
      {
         this._upgradeCostsAffordable = param1;
      }
   }
}

