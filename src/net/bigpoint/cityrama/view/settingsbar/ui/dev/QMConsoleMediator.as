package net.bigpoint.cityrama.view.settingsbar.ui.dev
{
   import flash.display.DisplayObject;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.controller.dev.DevMacroCommand;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class QMConsoleMediator extends Mediator
   {
      
      public static const NAME:String = "QMConsoleMediator";
      
      private var _resourceSnapshot:Dictionary = new Dictionary();
      
      private var _sniffWheel:Boolean;
      
      private var _citywheelProxy:CityWheelProxy;
      
      private var _cityWheelRewards:Vector.<Vector.<CityWheelRewardDTO>> = new Vector.<Vector.<CityWheelRewardDTO>>();
      
      private var _drawnBuffs:Vector.<ConfigCityWheelBuffDTO> = new Vector.<ConfigCityWheelBuffDTO>(0);
      
      private var _numSpins:int;
      
      private var _tempLottery:Vector.<CityWheelRewardDTO>;
      
      private var _lotteryList:Vector.<Vector.<CityWheelRewardDTO>> = new Vector.<Vector.<CityWheelRewardDTO>>();
      
      private var _lotteryValidList:Vector.<Boolean> = new Vector.<Boolean>();
      
      private var _compareBags:Boolean;
      
      private var _timemesure:Number = 0;
      
      private var _drawnSlots:Dictionary = new Dictionary();
      
      private var _maxSpins:int;
      
      public function QMConsoleMediator(param1:String, param2:DisplayObject)
      {
         super(param1,param2);
      }
      
      private static function cloneDict(param1:Dictionary) : Dictionary
      {
         var _loc3_:Object = null;
         var _loc2_:Dictionary = new Dictionary();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      override public function onRegister() : void
      {
      }
      
      private function featureHandler(param1:MouseEvent) : void
      {
         var _loc2_:FeatureProxy = null;
         switch(param1.currentTarget)
         {
            case this.component.traceFeatureStats:
               _loc2_ = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
               this.component.trace("CITYWHEEL " + _loc2_.isFeatureEnabled(ServerFeatureConstants.CITYWHEEL));
               this.component.trace("COASTAL_PLAYFIELD_SWITCH " + _loc2_.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH));
         }
      }
      
      private function macroHandler(param1:MouseEvent) : void
      {
         switch(param1.currentTarget)
         {
            case this.component.cleanBoulder:
               sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.DELETE_ALL_BOULDER);
               break;
            case this.component.constructAll:
               sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.INSTANT_BUILD_ALL);
               break;
            case this.component.inagurateAll:
               sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.INAGURATE_ALL);
               break;
            case this.component.repairAll:
               sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.REPAIR_ALL);
               break;
            case this.component.unlockAllExpansions:
               sendNotification(ApplicationNotificationConstants.DEV_MACRO,DevMacroCommand.UNLOCK_ALL_EXPANSIONS);
         }
      }
      
      private function handleKeyboardDown(param1:KeyboardEvent) : void
      {
      }
      
      private function resourceDivHandler(param1:MouseEvent) : void
      {
         var _loc3_:ResourceDTO = null;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         if(this.component.divResourceButton.selected)
         {
            this._resourceSnapshot = new Dictionary();
            this._resourceSnapshot = cloneDict(_loc2_.player.resources);
            this.component.trace("Snapshot Taken");
         }
         else
         {
            for each(_loc3_ in this._resourceSnapshot)
            {
               this.component.trace(_loc2_.player.resources[_loc3_.configId].amount - _loc3_.amount + " " + _loc3_.config.type);
            }
            for each(_loc3_ in _loc2_.player.resources)
            {
               if(this._resourceSnapshot[_loc3_.config.id] == null)
               {
                  this.component.trace(_loc3_.amount.toString() + " " + _loc3_.config.type);
               }
            }
            this._resourceSnapshot = new Dictionary();
         }
      }
      
      private function get component() : QMConsole
      {
         return super.getViewComponent() as QMConsole;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
      }
      
      private function handleWheelSniffer(param1:MouseEvent) : void
      {
      }
      
      private function manageTokens() : void
      {
      }
      
      private function printWheelResult() : void
      {
      }
      
      private function traceWheelResults(param1:Vector.<Vector.<CityWheelRewardDTO>>, param2:Boolean, param3:Vector.<ConfigCityWheelBuffDTO> = null) : void
      {
         var _loc10_:Vector.<CityWheelRewardDTO> = null;
         var _loc11_:* = undefined;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:CityWheelRewardDTO = null;
         var _loc15_:int = 0;
         var _loc16_:ConfigCityWheelBuffDTO = null;
         var _loc4_:Dictionary = new Dictionary();
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:Dictionary = new Dictionary();
         var _loc8_:Dictionary = new Dictionary();
         var _loc9_:ConfigDTO = (facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy).config;
         for each(_loc10_ in param1)
         {
            for each(_loc14_ in _loc10_)
            {
               _loc15_ = param2 ? int(_loc14_.outputAmount) : 1;
               if(_loc14_.goodConfig)
               {
                  if(_loc4_[_loc14_.goodConfig.id])
                  {
                     _loc4_[_loc14_.goodConfig.id] += _loc15_;
                  }
                  else
                  {
                     _loc4_[_loc14_.goodConfig.id] = _loc15_;
                  }
               }
               if(_loc14_.improvementConfig)
               {
                  if(_loc5_[_loc14_.improvementConfig.id])
                  {
                     _loc5_[_loc14_.improvementConfig.id] += _loc15_;
                  }
                  else
                  {
                     _loc5_[_loc14_.improvementConfig.id] = _loc15_;
                  }
               }
               if(_loc14_.playfieldItemConfig)
               {
                  if(_loc6_[_loc14_.playfieldItemConfig.id])
                  {
                     _loc6_[_loc14_.playfieldItemConfig.id] += _loc15_;
                  }
                  else
                  {
                     _loc6_[_loc14_.playfieldItemConfig.id] = _loc15_;
                  }
               }
               if(_loc14_.resourceConfig)
               {
                  if(_loc7_[_loc14_.resourceConfig.id])
                  {
                     _loc7_[_loc14_.resourceConfig.id] += _loc15_;
                  }
                  else
                  {
                     _loc7_[_loc14_.resourceConfig.id] = _loc15_;
                  }
               }
            }
         }
         if(param3 != null)
         {
            for each(_loc16_ in param3)
            {
               if(_loc8_[_loc16_.localeId])
               {
                  ++_loc8_[_loc16_.localeId];
               }
               else
               {
                  _loc8_[_loc16_.localeId] = 1;
               }
            }
         }
         for(_loc11_ in _loc4_)
         {
            _loc13_ = Number(_loc11_);
            _loc12_ = int(_loc4_[_loc11_]);
            this.component.trace(_loc12_ + " , " + LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + ConfigGoodDTO(_loc9_.goods[_loc13_]).localeId));
         }
         for(_loc11_ in _loc5_)
         {
            _loc13_ = Number(_loc11_);
            _loc12_ = int(_loc5_[_loc11_]);
            this.component.trace(_loc12_ + " , " + LocaUtils.getString("rcl.improvements.name","rcl.improvements.name." + ConfigImprovementDTO(_loc9_.improvements[_loc13_]).locaId) + " " + ConfigImprovementDTO(_loc9_.improvements[_loc13_]).quality);
         }
         for(_loc11_ in _loc6_)
         {
            _loc13_ = Number(_loc11_);
            _loc12_ = int(_loc6_[_loc11_]);
            this.component.trace(_loc12_ + " , " + LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + ConfigPlayfieldItemDTO(_loc9_.items[_loc13_]).localeId));
         }
         for(_loc11_ in _loc7_)
         {
            _loc13_ = Number(_loc11_);
            _loc12_ = int(_loc7_[_loc11_]);
            this.component.trace(_loc12_ + " , " + _loc9_.resourceStrings[_loc13_]);
         }
         if(param3 != null)
         {
            this.component.trace("drawn Buffs:");
            for(_loc11_ in _loc8_)
            {
               _loc13_ = Number(_loc11_);
               _loc12_ = int(_loc8_[_loc11_]);
               this.component.trace(_loc12_ + " , " + LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buff.name.capital." + _loc13_));
            }
         }
      }
   }
}

