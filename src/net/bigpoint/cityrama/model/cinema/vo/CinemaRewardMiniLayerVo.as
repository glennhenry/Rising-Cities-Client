package net.bigpoint.cityrama.model.cinema.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.util.LocaUtils;
   
   public class CinemaRewardMiniLayerVo
   {
      
      private var _viewsLeft:uint;
      
      private var _maxViews:uint;
      
      private var _cinemaLocaleId:String;
      
      private var _paymentPack:ConfigPaymentPackDTO;
      
      public function CinemaRewardMiniLayerVo()
      {
         super();
      }
      
      public function set viewsLeft(param1:uint) : void
      {
         this._viewsLeft = param1;
      }
      
      public function set maxViews(param1:uint) : void
      {
         this._maxViews = param1;
      }
      
      public function set cinemaLocaleId(param1:String) : void
      {
         this._cinemaLocaleId = param1;
      }
      
      public function set paymentPack(param1:ConfigPaymentPackDTO) : void
      {
         this._paymentPack = param1;
      }
      
      public function get flavourText() : String
      {
         return LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.flavour",[this.rcAmount]);
      }
      
      public function get headerText() : String
      {
         return LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._cinemaLocaleId + ".capital");
      }
      
      public function get layerText() : String
      {
         return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.postit.videoCount",[this._viewsLeft]);
      }
      
      public function get okButtonLabel() : String
      {
         return LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.button.ok.capital");
      }
      
      public function get watchMoreButtonLabel() : String
      {
         return LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.button.more.capital");
      }
      
      public function get watchMoreButtonTooltip() : String
      {
         return LocaUtils.getString("rcl.tooltips.cinema","rcl.tooltips.cinema.button.more");
      }
      
      public function get watchMoreButtonIncludeInLayout() : Boolean
      {
         return this._viewsLeft > 0;
      }
      
      public function get stepBarData() : StepMarkerVo
      {
         var _loc1_:StepMarkerVo = new StepMarkerVo();
         _loc1_.currentProgress = Math.max(this._maxViews - this._viewsLeft,0);
         _loc1_.hasLastInterval = false;
         var _loc2_:int = 1;
         while(_loc2_ <= this._maxViews)
         {
            _loc1_.stepInactiveStyles.push("cinemaInactive");
            _loc1_.stepActiveStyles.push("active");
            _loc1_.progressSteps.push(_loc2_);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get rcAmount() : uint
      {
         if(this._paymentPack && this._paymentPack.resources && Boolean(this._paymentPack.resources[0]))
         {
            return this._paymentPack.resources[0].outputAmount;
         }
         return 0;
      }
      
      public function get rewardData() : RewardItemComponentVo
      {
         var _loc1_:ConfigOutputDTO = null;
         var _loc2_:Object = null;
         if(this._paymentPack && this._paymentPack.resources && Boolean(this._paymentPack.resources[0]))
         {
            _loc1_ = this._paymentPack.resources[0];
            _loc2_ = new Object();
            _loc2_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
            _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
            _loc2_.useNew = false;
            _loc2_.cid = _loc1_.resourceConfig.id;
            if(_loc1_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
            {
               _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
               _loc2_.itemIcon = "rc_icon_medium";
               _loc2_.itemIconLib = "gui_resources_icons";
               _loc2_.price = _loc1_.outputAmount;
               return new RewardItemComponentVo(_loc2_);
            }
            return null;
         }
         return null;
      }
   }
}

