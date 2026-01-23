package net.bigpoint.cityrama.model.shop
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class NeedVo
   {
      
      private var _isSatisfied:Boolean;
      
      private var _shopGfxId:Number;
      
      private var _shopLocaleId:String;
      
      private var _shopConfigIds:Vector.<Number>;
      
      private var _vcBoost:Number;
      
      private var _xpBoost:Number;
      
      private var _ppBoost:Number;
      
      private var _epBoost:Number;
      
      private var _playfieldConfigs:Vector.<ConfigPlayfieldItemDTO>;
      
      public function NeedVo(param1:Vector.<ConfigPlayfieldItemDTO>, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:ConfigPlayfieldItemDTO = null;
         super();
         this._vcBoost = param2;
         this._ppBoost = param3;
         this._epBoost = param5;
         this._xpBoost = param4;
         this._shopConfigIds = new Vector.<Number>();
         for each(_loc6_ in param1)
         {
            this._shopConfigIds.push(_loc6_.id);
            if(!_loc6_.isUpgrade)
            {
               this._shopGfxId = _loc6_.gfxId;
               this._shopLocaleId = _loc6_.localeId;
            }
         }
         this._playfieldConfigs = param1;
      }
      
      public function get isSatisfied() : Boolean
      {
         return this._isSatisfied;
      }
      
      public function set isSatisfied(param1:Boolean) : void
      {
         this._isSatisfied = param1;
      }
      
      public function get shopGfxId() : Number
      {
         return this._shopGfxId;
      }
      
      public function get shopConfigIds() : Vector.<Number>
      {
         return this._shopConfigIds;
      }
      
      public function get shopLocaleId() : String
      {
         return this._shopLocaleId;
      }
      
      public function get vcBoost() : Number
      {
         return this._vcBoost;
      }
      
      public function get xpBoost() : Number
      {
         return this._xpBoost;
      }
      
      public function get ppBoost() : Number
      {
         return this._ppBoost;
      }
      
      public function get epBoost() : Number
      {
         return this._epBoost;
      }
      
      public function get playfieldConfigs() : Vector.<ConfigPlayfieldItemDTO>
      {
         return this._playfieldConfigs;
      }
      
      public function get levelOneConfig() : ConfigPlayfieldItemDTO
      {
         var _loc1_:ConfigPlayfieldItemDTO = null;
         for each(_loc1_ in this.playfieldConfigs)
         {
            if(!_loc1_.isUpgrade)
            {
               return _loc1_;
            }
         }
         return null;
      }
   }
}

