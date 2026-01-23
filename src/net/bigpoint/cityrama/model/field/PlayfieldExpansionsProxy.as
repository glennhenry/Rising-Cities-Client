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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "PlayfieldExpansionsProxy";
         if(_loc1_)
         {
            EXPANSION_XP_MODIFIER = "extensionXpModifier";
         }
      }
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _validExpansionsInactive:Vector.<ExpansionFieldObjectVo>;
      
      public function PlayfieldExpansionsProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0039);
            }
            §§goto(addr004f);
         }
         addr0039:
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         if(!_loc4_)
         {
            addr004f:
            this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         }
      }
      
      public function get validExpansionsInactive() : Vector.<ExpansionFieldObjectVo>
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc4_:ConfigPlayfieldExpansionDTO = null;
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         var _loc7_:ExpansionFieldObjectVo = null;
         var _loc8_:ExpansionFieldObjectVo = null;
         if(_loc13_ || _loc2_)
         {
            if(this._validExpansionsInactive != null)
            {
               if(!_loc14_)
               {
                  §§goto(addr004e);
               }
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
               if(_loc13_)
               {
                  _loc6_ = false;
               }
               for each(_loc7_ in _loc1_)
               {
                  if(_loc7_.id_conf == _loc4_.id)
                  {
                     if(_loc13_)
                     {
                        _loc6_ = true;
                     }
                     break;
                  }
               }
               if(_loc13_)
               {
                  §§push(_loc6_);
                  if(_loc13_ || Boolean(_loc1_))
                  {
                     §§push(!§§pop());
                     if(_loc13_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(_loc13_ || Boolean(this))
                           {
                              addr012a:
                              §§pop();
                              if(!_loc14_)
                              {
                                 addr013f:
                                 addr0131:
                                 if(_loc4_.playfieldId != this._playfieldProxy.config.id)
                                 {
                                    continue;
                                 }
                              }
                              _loc8_ = new ExpansionFieldObjectVo(null,_loc5_,true);
                              if(_loc13_)
                              {
                                 _loc3_.push(_loc8_);
                              }
                              continue;
                           }
                        }
                     }
                     §§goto(addr013f);
                  }
                  §§goto(addr012a);
               }
               §§goto(addr0131);
            }
            if(!(_loc14_ && Boolean(_loc1_)))
            {
               this._playfieldProxy.playfieldDTO.expansionsBuyable = _loc3_;
               if(!_loc14_)
               {
                  this._validExpansionsInactive = _loc3_;
               }
            }
            return _loc3_;
         }
         addr004e:
         return this._validExpansionsInactive;
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
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:ExpansionFieldObjectVo = null;
         var _loc5_:* = NaN;
         var _loc2_:Vector.<ExpansionFieldObjectVo> = this._playfieldProxy.playfieldDTO.expansions;
         var _loc3_:Boolean = false;
         for each(_loc4_ in _loc2_)
         {
            if(_loc11_ || Boolean(this))
            {
               var _loc8_:int = 0;
               if(_loc11_ || Boolean(param1))
               {
                  var _loc9_:* = _loc4_.configOrigin.neighbourIDList;
                  if(_loc11_)
                  {
                     for each(_loc8_ in _loc9_)
                     {
                        §§push(_loc8_);
                        if(!_loc10_)
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              _loc5_ = §§pop();
                              addr00a9:
                              §§push(param1);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 _loc3_ = true;
                              }
                              break;
                           }
                           continue;
                        }
                        §§goto(addr00a9);
                     }
                  }
               }
               if(!_loc11_)
               {
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
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
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
            if(_loc14_)
            {
               continue;
            }
            var _loc10_:int = 0;
            if(_loc15_)
            {
               var _loc11_:* = _loc4_;
               if(_loc15_ || Boolean(_loc1_))
               {
                  for each(_loc5_ in _loc11_)
                  {
                     if(_loc15_)
                     {
                        _loc6_ = false;
                     }
                  }
                  addr011d:
                  continue;
                  addr0114:
               }
               while(true)
               {
                  var _loc12_:int = 0;
                  var _loc13_:* = _loc1_;
                  for each(_loc7_ in _loc13_)
                  {
                     §§push(_loc7_.id == _loc5_);
                     if(!_loc14_)
                     {
                        §§pop();
                        if(_loc15_)
                        {
                           addr00d8:
                           _loc6_ = true;
                        }
                        if(_loc15_ || Boolean(_loc2_))
                        {
                           if(!_loc6_)
                           {
                              if(_loc15_)
                              {
                                 addr010e:
                                 _loc2_.push(_loc5_);
                              }
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr010e);
                        addr00e5:
                     }
                     §§goto(addr00d8);
                  }
                  §§goto(addr00e5);
               }
            }
            §§goto(addr011d);
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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Number = param1.normalPrice;
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(§§pop() + 3000 * (Math.pow(2,0.26 * (this.getBoughtExpansionAmount() + this._playfieldProxy.config.expansionValue)) - 1));
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(§§pop().toFixed().length - 2);
         }
         var _loc4_:int = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() / Math.pow(10,_loc4_));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(_loc6_ || Boolean(param1))
                  {
                     _loc3_ = §§pop();
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        addr00ba:
                        §§push(Math.round(_loc3_) * Math.pow(10,_loc4_));
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§goto(addr00f8);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr00f7);
                  }
               }
               addr00f8:
               §§push(§§pop());
               if(!(_loc5_ && Boolean(param1)))
               {
                  addr00f6:
                  _loc3_ = §§pop();
                  addr00f7:
                  return _loc3_;
               }
            }
            §§goto(addr00f6);
         }
         §§goto(addr00ba);
      }
      
      public function getExpansionXP(param1:ConfigPlayfieldExpansionDTO) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this.getVCExpansionCosts(param1));
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() * this.expansionXPModifier;
         }
      }
      
      private function get expansionXPModifier() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._configProxy.config.balanceParameters[EXPANSION_XP_MODIFIER])
            {
               if(!_loc1_)
               {
                  return Number(ConfigBalanceDTO(this._configProxy.config.balanceParameters[EXPANSION_XP_MODIFIER]).value);
               }
            }
         }
         return 0.5;
      }
      
      public function invalidateExpansions() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._validExpansionsInactive = null;
         }
      }
   }
}

