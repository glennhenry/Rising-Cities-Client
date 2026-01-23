package net.bigpoint.cityrama.model.good.vo
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.GoodRequireVo;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   
   public class ProductionGoodObjectVo
   {
      
      private var _configGood:ConfigGoodDTO;
      
      private var _productionTime:Number;
      
      private var _requiredGoods:Vector.<GoodRequireVo>;
      
      private var _productionCostPP:int;
      
      private var _productionYeld:int;
      
      private var _productionIncome:SimpleItemVo;
      
      public function ProductionGoodObjectVo(param1:ConfigGoodDTO)
      {
         super();
         this._configGood = param1;
         this._requiredGoods = new Vector.<GoodRequireVo>();
      }
      
      public function get config() : ConfigGoodDTO
      {
         return this._configGood;
      }
      
      public function get productionTime() : Number
      {
         return this._productionTime;
      }
      
      public function get productionCostProductionPoints() : int
      {
         return this._productionCostPP;
      }
      
      public function set productionTime(param1:Number) : void
      {
         this._productionTime = param1;
      }
      
      public function set productionCostProductionPoints(param1:int) : void
      {
         this._productionCostPP = param1;
      }
      
      public function get productionYeld() : int
      {
         return this._productionYeld;
      }
      
      public function set productionYeld(param1:int) : void
      {
         this._productionYeld = param1;
      }
      
      public function get requiredGoods() : Vector.<GoodRequireVo>
      {
         return this._requiredGoods;
      }
      
      public function get productionIncome() : SimpleItemVo
      {
         return this._productionIncome;
      }
      
      public function set productionIncome(param1:SimpleItemVo) : void
      {
         this._productionIncome = param1;
      }
      
      public function get groupType() : String
      {
         var _loc1_:ConfigTagDTO = null;
         for each(_loc1_ in this._configGood.tagConfigs)
         {
            if(_loc1_.tagName == ServerTagConstants.GOOD_CONSTRUCTION || _loc1_.tagName == ServerTagConstants.GOOD_NORMAL)
            {
               return _loc1_.tagName;
            }
         }
         return null;
      }
      
      public function get gfxId() : int
      {
         return this._configGood.gfxId;
      }
      
      public function get localeId() : String
      {
         return this._configGood.localeId;
      }
   }
}

