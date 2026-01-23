package net.bigpoint.cityrama.model.field.ground
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class RestrictionProxy extends Proxy
   {
      
      public static const NAME:String = "RestrictionProxy";
      
      private var _configProxy:GameConfigProxy;
      
      private var _gridProxy:GridProxy;
      
      private var _restrictionGridVisibility:Boolean;
      
      private var _restrictionGridSource:Vector.<ConfigGroundRestrictionDTO>;
      
      private var _restrictionMatrix:Array;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _restrictionItem:IGameObjectVo;
      
      private var _ignoreStreets:Boolean;
      
      public function RestrictionProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._gridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
      }
      
      public function getWhiteListRestrictionsForItem(param1:ConfigPlayfieldItemDTO) : Vector.<ConfigGroundRestrictionDTO>
      {
         var _loc3_:ConfigGroundRestrictionDTO = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Vector.<ConfigGroundRestrictionDTO> = new Vector.<ConfigGroundRestrictionDTO>();
         for each(_loc3_ in this._configProxy.config.restrictions)
         {
            for each(_loc4_ in _loc3_.configTagIds)
            {
               for each(_loc5_ in param1.tagIds)
               {
                  if(_loc4_ == _loc5_)
                  {
                     if(_loc3_.whiteList)
                     {
                        _loc2_.push(_loc3_);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function getAllRestrictionsForItem(param1:ConfigPlayfieldItemDTO) : Vector.<ConfigGroundRestrictionDTO>
      {
         var _loc3_:ConfigGroundRestrictionDTO = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:ConfigGroundRestrictionDTO = null;
         var _loc7_:String = null;
         var _loc8_:ConfigGroundRestrictionDTO = null;
         var _loc2_:Vector.<ConfigGroundRestrictionDTO> = new Vector.<ConfigGroundRestrictionDTO>();
         for each(_loc3_ in this._configProxy.config.restrictions)
         {
            if(_loc3_.playfieldId == this._playfieldProxy.config.id)
            {
               for each(_loc4_ in _loc3_.configTagIds)
               {
                  for each(_loc5_ in param1.tagIds)
                  {
                     if(_loc4_ == _loc5_)
                     {
                        _loc2_.push(_loc3_);
                     }
                  }
               }
            }
         }
         if(_loc2_.length == 0)
         {
            for each(_loc7_ in param1.tags)
            {
               for each(_loc8_ in this._configProxy.config.restrictions)
               {
                  if(_loc7_.indexOf(_loc8_.groundType) != -1)
                  {
                     if(_loc8_.whiteList)
                     {
                        _loc6_ = new ConfigGroundRestrictionDTO({
                           "bw":true,
                           "gt":_loc8_.groundType
                        });
                        break;
                     }
                  }
               }
               if(_loc6_)
               {
                  break;
               }
            }
            if(_loc6_)
            {
               _loc2_.push(_loc6_);
            }
         }
         return _loc2_;
      }
      
      public function positionPossible(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         var _loc13_:int = 0;
         var _loc2_:Rectangle = this._gridProxy.selectedCuboid as Rectangle;
         var _loc3_:int = _loc2_.width * _loc2_.height;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this.getWhiteListRestrictionsForItem(param1).length > 0)
         {
            _loc4_ = true;
         }
         var _loc8_:int = _loc2_.x;
         while(_loc8_ < _loc2_.x + _loc2_.width)
         {
            _loc13_ = _loc2_.y;
            while(_loc13_ < _loc2_.y + _loc2_.height)
            {
               if(this._restrictionMatrix != null && this._restrictionMatrix.length > 0)
               {
                  if(this._restrictionMatrix[_loc8_][_loc13_].blacklist)
                  {
                     _loc6_++;
                  }
                  if(this._restrictionMatrix[_loc8_][_loc13_].whitelist)
                  {
                     _loc7_++;
                  }
                  if(this._restrictionMatrix[_loc8_][_loc13_].normal)
                  {
                     _loc5_++;
                  }
               }
               _loc13_++;
            }
            _loc8_++;
         }
         var _loc9_:* = _loc7_ > 0;
         var _loc10_:* = _loc6_ > 0;
         var _loc11_:* = _loc7_ == _loc3_;
         var _loc12_:* = _loc6_ == _loc3_;
         if(_loc4_)
         {
            if(_loc11_ && !_loc10_)
            {
               return true;
            }
            if(_loc12_ || _loc10_)
            {
               return false;
            }
            if(_loc9_ || !_loc11_)
            {
               return false;
            }
         }
         else if(_loc12_ || _loc10_)
         {
            return false;
         }
         return true;
      }
      
      public function get restrictionGridVisibility() : Boolean
      {
         return this._restrictionGridVisibility;
      }
      
      public function set restrictionGridVisibility(param1:Boolean) : void
      {
         this._restrictionGridVisibility = param1;
         sendNotification(ApplicationNotificationConstants.RESTRICTION_GRID_VISIBILITY_CHANGED);
      }
      
      public function get restrictionGridSource() : Vector.<ConfigGroundRestrictionDTO>
      {
         return this._restrictionGridSource;
      }
      
      public function set restrictionGridSource(param1:Vector.<ConfigGroundRestrictionDTO>) : void
      {
         this._restrictionGridSource = param1;
         this._ignoreStreets = false;
         sendNotification(ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE);
      }
      
      public function setRestrictionGridSource(param1:Vector.<ConfigGroundRestrictionDTO>, param2:Boolean = false) : void
      {
         this._restrictionGridSource = param1;
         this._ignoreStreets = param2;
         sendNotification(ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE);
      }
      
      public function get restrictionMatrix() : Array
      {
         return this._restrictionMatrix;
      }
      
      public function set restrictionMatrix(param1:Array) : void
      {
         this._restrictionMatrix = param1;
      }
      
      public function get restrictionItem() : IGameObjectVo
      {
         return this._restrictionItem;
      }
      
      public function set restrictionItem(param1:IGameObjectVo) : void
      {
         this._restrictionItem = param1;
      }
      
      public function get ignoreStreets() : Boolean
      {
         return this._ignoreStreets;
      }
   }
}

