package net.bigpoint.cityrama.model
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class UserLevelProxy extends Proxy
   {
      
      public static const NAME:String = "UserLevelProxy";
      
      public static const NO_NEXT_SUBLEVEL:int = -666;
      
      private var _configProxy:GameConfigProxy;
      
      private var _currentLevelId:Number;
      
      public function UserLevelProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
      }
      
      private static function hidePlayfieldItem(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         if(param1.tags.indexOf(ServerTagConstants.CLIENT_HIDE_LEVELUP) != -1)
         {
            return true;
         }
         return false;
      }
      
      private static function hideGood(param1:ConfigGoodDTO) : Boolean
      {
         if(param1.isTaggedGoodByTagName(ServerTagConstants.CLIENT_HIDE_LEVELUP))
         {
            return true;
         }
         return false;
      }
      
      public function get userIsMaxlevel() : Boolean
      {
         return this.getNextFullLevel(this.currentLevelId) == null;
      }
      
      public function getConfigByLevelId(param1:Number) : ConfigUserLevelDTO
      {
         var _loc2_:ConfigUserLevelDTO = null;
         for each(_loc2_ in this._configProxy.config.levels)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get levelsForQuestSlots() : Vector.<Number>
      {
         var _loc3_:ConfigUserLevelDTO = null;
         var _loc1_:Vector.<Number> = new Vector.<Number>();
         for each(_loc3_ in this._configProxy.config.levels)
         {
            if(_loc3_.availableQuestSlots > 0)
            {
               _loc1_.push(_loc3_.level);
               var _loc2_:int = _loc3_.availableQuestSlots;
            }
         }
         return _loc1_;
      }
      
      public function isSubLevel(param1:Number) : Boolean
      {
         var _loc2_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(_loc2_.previousLevelId);
         return _loc3_ != null && _loc2_.level == _loc3_.level;
      }
      
      public function getNextFullLevel(param1:Number) : ConfigUserLevelDTO
      {
         var _loc2_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         if(_loc2_)
         {
            var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(_loc2_.nextLevelId);
         }
         return null;
      }
      
      public function getLastSubLevelCap(param1:Number, param2:Number = 0) : Number
      {
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         if(this.isSubLevel(_loc3_.id))
         {
            return this.getLastSubLevelCap(_loc3_.previousLevelId,_loc3_.xp + param2);
         }
         return param2;
      }
      
      public function getNextSubLevelCap(param1:Number) : Number
      {
         var _loc2_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(_loc2_.nextLevelId);
         if(_loc3_)
         {
            if(this.isSubLevel(_loc3_.id))
            {
               return _loc3_.requiredXP;
            }
         }
         return NO_NEXT_SUBLEVEL;
      }
      
      public function getLevelUpVoById(param1:int, param2:String) : LevelUpVo
      {
         var _loc6_:DropInfoVo = null;
         var _loc8_:RewardItemComponentVo = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         var _loc11_:Object = null;
         var _loc12_:ConfigPlayfieldItemDTO = null;
         var _loc13_:ConfigGoodDTO = null;
         var _loc3_:ConfigUserLevelDTO = this.getConfigByLevelId(param1);
         var _loc4_:LevelUpVo = new LevelUpVo();
         _loc4_.level = _loc3_.level;
         var _loc5_:Vector.<DropInfoVo> = new Vector.<DropInfoVo>();
         var _loc7_:ArrayCollection = new ArrayCollection();
         for each(_loc9_ in _loc3_.levelOutputs)
         {
            _loc8_ = null;
            _loc6_ = null;
            if(_loc9_.goodConfig)
            {
               if(hideGood(_loc9_.goodConfig))
               {
                  continue;
               }
            }
            else if(_loc9_.playfieldItemConfig)
            {
               if(hidePlayfieldItem(_loc9_.playfieldItemConfig))
               {
                  continue;
               }
            }
            _loc8_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc9_,param2,false);
            if(_loc8_)
            {
               _loc7_.addItem(_loc8_);
               _loc6_ = RewardLayerProxy.generateDropInfo(_loc9_);
               if(_loc6_)
               {
                  _loc5_.push(_loc6_);
               }
            }
         }
         _loc4_.rewardDrops = _loc5_;
         for each(_loc12_ in this._configProxy.config.items)
         {
            _loc10_ = null;
            _loc11_ = null;
            if(_loc12_.levelId == param1 && _loc12_.buyable)
            {
               if(!_loc12_.isUpgrade)
               {
                  if(hidePlayfieldItem(_loc12_))
                  {
                     break;
                  }
                  _loc11_ = {};
                  _loc11_.t = ServerOutputConstants.PLAYFIELD_ITEM;
                  _loc11_.cid = _loc12_.id;
                  _loc11_.o = _loc12_.permissionConfig.initialPermissions;
                  _loc11_.m = 0;
                  _loc10_ = new ConfigOutputDTO(_loc11_);
                  _loc10_.playfieldItemConfig = _loc12_;
                  _loc8_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc10_,param2,true);
                  if(_loc8_)
                  {
                     _loc7_.addItem(_loc8_);
                  }
               }
            }
         }
         for each(_loc13_ in this._configProxy.config.goods)
         {
            _loc10_ = null;
            _loc11_ = null;
            if(_loc13_.levelId == param1)
            {
               if(hideGood(_loc13_))
               {
                  break;
               }
               _loc11_ = {};
               _loc11_.t = ServerOutputConstants.GOOD;
               _loc11_.cid = _loc13_.id;
               _loc11_.o = 0;
               _loc11_.m = 0;
               _loc10_ = new ConfigOutputDTO(_loc11_);
               _loc10_.goodConfig = _loc13_;
               _loc8_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc10_,param2,true);
               if(_loc8_)
               {
                  _loc7_.addItem(_loc8_);
               }
            }
         }
         RewardLayerProxy.sortRewardList(_loc7_);
         _loc4_.rewards = _loc7_;
         return _loc4_;
      }
      
      public function get currentLevelId() : Number
      {
         return this._currentLevelId;
      }
      
      public function set currentLevelId(param1:Number) : void
      {
         this._currentLevelId = param1;
      }
   }
}

