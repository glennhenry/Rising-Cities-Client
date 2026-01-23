package net.bigpoint.cityrama.model.field
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigBalanceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldExpansionDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayfieldExpansionsProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PlayfieldExpansionsProxy";
      
      private static const EXPANSION_XP_MODIFIER:String = "extensionXpModifier";
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _validExpansionsInactive:Vector.<ExpansionFieldObjectVo>;
      
      public function PlayfieldExpansionsProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
      }
      
      public function get validExpansionsInactive() : Vector.<ExpansionFieldObjectVo>
      {
         var _loc4_:ConfigPlayfieldExpansionDTO = null;
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         var _loc7_:ExpansionFieldObjectVo = null;
         var _loc8_:ExpansionFieldObjectVo = null;
         if(this._validExpansionsInactive != null)
         {
            return this._validExpansionsInactive;
         }
         var _loc1_:Vector.<ExpansionFieldObjectVo> = this._playfieldProxy.playfieldDTO.expansions;
         var _loc2_:Dictionary = this._configProxy.config.playfieldsExpansions;
         var _loc3_:Vector.<ExpansionFieldObjectVo> = new Vector.<ExpansionFieldObjectVo>();
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = {
               "pid":_loc4_.playfieldId,
               "cpe":_loc4_.id
            };
            _loc6_ = false;
            for each(_loc7_ in _loc1_)
            {
               if(_loc7_.id_conf == _loc4_.id)
               {
                  _loc6_ = true;
                  break;
               }
            }
            if(!_loc6_ && _loc4_.playfieldId == this._playfieldProxy.config.id)
            {
               _loc8_ = new ExpansionFieldObjectVo(null,_loc5_,true);
               _loc3_.push(_loc8_);
            }
         }
         this._playfieldProxy.playfieldDTO.expansionsBuyable = _loc3_;
         this._validExpansionsInactive = _loc3_;
         return _loc3_;
      }
      
      public function getconfigExpansion(param1:Number) : ConfigPlayfieldExpansionDTO
      {
         var _loc3_:ConfigPlayfieldExpansionDTO = null;
         var _loc4_:ConfigPlayfieldExpansionDTO = null;
         var _loc2_:Dictionary = this._configProxy.config.playfieldsExpansions;
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.id == param1)
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function get validExpansions() : Vector.<ExpansionFieldObjectVo>
      {
         return this._playfieldProxy.playfieldDTO.expansions;
      }
      
      public function isBuyableExpansions(param1:Number) : Boolean
      {
         var _loc4_:ExpansionFieldObjectVo = null;
         var _loc5_:Number = NaN;
         var _loc2_:Vector.<ExpansionFieldObjectVo> = this._playfieldProxy.playfieldDTO.expansions;
         var _loc3_:Boolean = false;
         for each(_loc4_ in _loc2_)
         {
            for each(_loc5_ in _loc4_.configOrigin.neighbourIDList)
            {
               if(_loc5_ == param1)
               {
                  _loc3_ = true;
                  break;
               }
            }
            if(_loc3_)
            {
               break;
            }
         }
         return _loc3_;
      }
      
      public function get validExpansionsIDsBuyable() : Vector.<Number>
      {
         var _loc3_:ExpansionFieldObjectVo = null;
         var _loc4_:Vector.<Number> = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:ExpansionFieldObjectVo = null;
         var _loc1_:Vector.<ExpansionFieldObjectVo> = this._playfieldProxy.playfieldDTO.expansions;
         var _loc2_:Vector.<Number> = new Vector.<Number>();
         for each(_loc3_ in _loc1_)
         {
            _loc4_ = _loc3_.configOrigin.neighbourIDList;
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = false;
               var _loc12_:int = 0;
               var _loc13_:* = _loc1_;
               for each(_loc7_ in _loc13_)
               {
                  _loc7_.id == _loc5_;
                  _loc6_ = true;
               }
               if(!_loc6_)
               {
                  _loc2_.push(_loc5_);
               }
            }
         }
         return _loc2_;
      }
      
      private function getBoughtExpansionAmount() : Number
      {
         return this._playfieldProxy.playfieldDTO.expansions.length;
      }
      
      public function getRCExpansionCosts(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         return Math.round(Math.pow(this.getVCExpansionCosts(param1) + 500,0.355) / 2 * 12.5);
      }
      
      public function getVCExpansionCosts(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         var _loc2_:Number = param1.normalPrice;
         var _loc3_:Number = _loc2_ + 3000 * (Math.pow(2,0.26 * (this.getBoughtExpansionAmount() + this._playfieldProxy.config.expansionValue)) - 1);
         var _loc4_:int = _loc3_.toFixed().length - 2;
         _loc3_ /= Math.pow(10,_loc4_);
         return Math.round(_loc3_) * Math.pow(10,_loc4_);
      }
      
      public function getExpansionXP(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         return this.getVCExpansionCosts(param1) * this.expansionXPModifier;
      }
      
      private function get expansionXPModifier() : Number
      {
         if(this._configProxy.config.balanceParameters[EXPANSION_XP_MODIFIER])
         {
            return Number(ConfigBalanceDTO(this._configProxy.config.balanceParameters[EXPANSION_XP_MODIFIER]).value);
         }
         return 0.5;
      }
      
      public function invalidateExpansions() : void
      {
         this._validExpansionsInactive = null;
      }
   }
}

