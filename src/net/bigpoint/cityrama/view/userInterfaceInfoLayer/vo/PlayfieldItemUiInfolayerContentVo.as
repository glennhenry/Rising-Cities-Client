package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.util.LocaUtils;
   
   public class PlayfieldItemUiInfolayerContentVo extends AbstractUIInfolayerContentVo
   {
      
      protected var _data:ConfigPlayfieldItemDTO;
      
      private var _currentTimeStamp:Number;
      
      private var _permission:PlayfieldItemPermissionDTO;
      
      private var _masteryChallenge:MasteryChallengeDTO;
      
      private var _userLevel:int;
      
      private var _isReward:Boolean;
      
      private var _infoLayerConfigPlayfieldItemVo:InfoLayerConfigPlayfieldItemVo;
      
      public function PlayfieldItemUiInfolayerContentVo(param1:uint, param2:Point, param3:ConfigPlayfieldItemDTO, param4:MasteryChallengeDTO = null, param5:String = "", param6:Number = 0)
      {
         super(param1,param2,param5);
         this._data = param3;
         this._currentTimeStamp = param6;
         this._masteryChallenge = param4;
         this._infoLayerConfigPlayfieldItemVo = new InfoLayerConfigPlayfieldItemVo(param3);
      }
      
      override public function get headerString() : String
      {
         return LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId + ".capital");
      }
      
      public function get userPermissionStock() : int
      {
         if(!this._permission)
         {
            throw new RamaCityError("set the permission !");
         }
         return this._permission.permissionsLeft;
      }
      
      public function get needsPermissions() : Boolean
      {
         return this._permission.config.initialPermissions > -1;
      }
      
      public function get buyablePermissionStock() : int
      {
         if(!this._permission)
         {
            throw new RamaCityError("set the permission !");
         }
         if(this._permission.config.buyCap != -1)
         {
            return this._permission.config.buyCap - this._permission.permissionsBought;
         }
         return 1;
      }
      
      public function get buyCap() : int
      {
         if(!this._permission)
         {
            throw new RamaCityError("set the permission !");
         }
         return this._permission.config.buyCap;
      }
      
      public function set permission(param1:PlayfieldItemPermissionDTO) : void
      {
         this._permission = param1;
      }
      
      public function get specialText() : String
      {
         if(this._data.tags.indexOf(ServerTagConstants.MYSTERY) != -1)
         {
            return LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.specials.mysterybuilding");
         }
         if(this._data.tags.indexOf(ServerTagConstants.BUILDING_EVENTSQUARE) != -1)
         {
            return LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.specials.eventsquare");
         }
         if(this._data.tags.indexOf(ServerTagConstants.CINEMA) != -1)
         {
            return LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.text.available");
         }
         return null;
      }
      
      public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return this._data.configSecurityGrades.sort(MainLayerProxy.sortSecurityGradesOnOrderId);
      }
      
      public function get unlockLevel() : int
      {
         return this._data.unlockLevel;
      }
      
      public function set userLevel(param1:int) : void
      {
         this._userLevel = param1;
      }
      
      public function get isUnlocked() : Boolean
      {
         if(!this._userLevel)
         {
            throw new RamaCityError("set the userlevel !");
         }
         return this._userLevel >= this._data.unlockLevel;
      }
      
      public function set isReward(param1:Boolean) : void
      {
         this._isReward = param1;
      }
      
      public function get isReward() : Boolean
      {
         return this._isReward;
      }
      
      public function get masteryChallenge() : MasteryChallengeDTO
      {
         return this._masteryChallenge;
      }
      
      public function get configMasteryChallenge() : ConfigMasteryChallengeDTO
      {
         return this._data.configMasteryChallengeDTO;
      }
      
      public function get isPremium() : Boolean
      {
         return this._data.isPremium;
      }
      
      public function get infoLayerConfigPlayfieldItemVo() : InfoLayerConfigPlayfieldItemVo
      {
         return this._infoLayerConfigPlayfieldItemVo;
      }
   }
}

