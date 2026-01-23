package net.bigpoint.cityrama.model.sound
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadDynamicServiceProxy;
   import net.bigpoint.cityrama.model.sound.vo.SoundVo;
   import net.bigpoint.util.CityramaLogger;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SoundProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SoundProxy";
      
      private var _isBackgroundSoundOff:Boolean;
      
      private var _isSFXOff:Boolean;
      
      private var _backgroundSound:Sound;
      
      private var _soundsSFX:Dictionary;
      
      private var _optionsMenuProxy:OptionsMenuProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _soundTransform:SoundTransform;
      
      private var _fileRuntimeLoadServiceProxy:FileRuntimeLoadDynamicServiceProxy;
      
      private var _soundFilesLoaded:Boolean;
      
      public function SoundProxy(param1:Object = null)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         this._optionsMenuProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
         this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this._soundsSFX = new Dictionary(true);
         this._soundTransform = new SoundTransform(this._isSFXOff ? 1 : 0,0);
         this._fileRuntimeLoadServiceProxy = FileRuntimeLoadDynamicServiceProxy(facade.retrieveProxy(FileRuntimeLoadDynamicServiceProxy.NAME));
         this._soundFilesLoaded = false;
         if(!this._fileRuntimeLoadServiceProxy.service.libAllReadyLoaded("sounds_sounds"))
         {
            _loc1_ = ["sounds_sounds"];
            _loc2_ = "preloadDoneNotification_SoundProxy";
            this._fileRuntimeLoadServiceProxy.service.addEventListener(_loc2_,this.soundsReady);
            this._fileRuntimeLoadServiceProxy.service.checkSWFArrayLoaded(_loc1_,_loc2_);
         }
         this.isBackgroundSoundOff = OptionsGlobalVariables.getInstance().soundActive;
         this.isSFXOff = OptionsGlobalVariables.getInstance().soundActive;
      }
      
      private function soundsReady(param1:Event) : void
      {
         this._soundFilesLoaded = true;
         this.setupBackgroundSound();
         this.isBackgroundSoundOff = this.isBackgroundSoundOff;
      }
      
      public function get isBackgroundSoundOff() : Boolean
      {
         return this._isBackgroundSoundOff;
      }
      
      public function set isBackgroundSoundOff(param1:Boolean) : void
      {
         this._isBackgroundSoundOff = param1;
      }
      
      public function get isSFXOff() : Boolean
      {
         return this._isSFXOff;
      }
      
      public function set isSFXOff(param1:Boolean) : void
      {
         var _loc2_:Vector.<SoundVo> = null;
         var _loc3_:SoundVo = null;
         this._isSFXOff = param1;
         this._soundTransform = new SoundTransform(this._isSFXOff ? 1 : 0,0);
         for each(_loc2_ in this._soundsSFX)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.channel)
               {
                  _loc3_.channel.soundTransform = this._soundTransform;
               }
            }
         }
      }
      
      private function setupBackgroundSound() : void
      {
         if(!this._soundFilesLoaded)
         {
            return;
         }
         var _loc1_:Class = ApplicationDomain.currentDomain.getDefinition("BackgroundMusic") as Class;
         this._backgroundSound = new _loc1_();
         this.addSFXchannel(this._backgroundSound,"BackgroundMusic",true);
      }
      
      private function addSFXchannel(param1:Sound, param2:String, param3:Boolean = false) : void
      {
         if(!this._soundsSFX[param2])
         {
            this._soundsSFX[param2] = new Vector.<SoundVo>();
         }
         if(param2 == "ShrubberyDemolish" && Vector.<SoundVo>(this._soundsSFX[param2]).length != 0)
         {
            return;
         }
         var _loc4_:SoundVo = new SoundVo();
         _loc4_.type = param2;
         _loc4_.sound = param1;
         _loc4_.loop = param3;
         this._soundsSFX[param2].push(_loc4_);
         TweenMax.delayedCall(this._soundsSFX[param2].length * 10 / 1000,this.startSound,[_loc4_]);
      }
      
      private function startSound(param1:SoundVo) : void
      {
         var _loc2_:int = 0;
         param1.channel = param1.sound.play();
         if(param1.channel)
         {
            param1.channel.soundTransform = this._soundTransform;
            param1.channel.addEventListener(Event.SOUND_COMPLETE,this.handleSFXcomplete);
         }
         else
         {
            _loc2_ = int(this._soundsSFX[param1.type].indexOf(param1));
            if(_loc2_ != -1)
            {
               this._soundsSFX[param1.type].splice(_loc2_,1);
            }
         }
      }
      
      private function stopSound(param1:String, param2:Boolean) : void
      {
         var _loc3_:Vector.<SoundVo> = null;
         var _loc4_:SoundVo = null;
         for each(_loc3_ in this._soundsSFX)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.type == param1)
               {
                  var _loc5_:int = int(this._soundsSFX[_loc4_.type].indexOf(_loc4_));
                  if(_loc4_.channel)
                  {
                     _loc4_.channel.stop();
                  }
                  this._soundsSFX[_loc4_.type].splice(0,1);
                  if(!param2)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function handleSFXcomplete(param1:Object) : void
      {
         var _loc3_:Vector.<SoundVo> = null;
         var _loc4_:SoundVo = null;
         var _loc2_:SoundChannel = param1.target as SoundChannel;
         for each(_loc3_ in this._soundsSFX)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.channel === _loc2_)
               {
                  var _loc5_:int = int(this._soundsSFX[_loc4_.type].indexOf(_loc4_));
                  if(_loc4_.loop)
                  {
                     _loc4_.channel = _loc4_.sound.play();
                     _loc4_.channel.soundTransform = this._soundTransform;
                     _loc4_.channel.addEventListener(Event.SOUND_COMPLETE,this.handleSFXcomplete);
                  }
                  else
                  {
                     this._soundsSFX[_loc4_.type].splice(0,1);
                  }
                  _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.handleSFXcomplete);
                  return;
               }
            }
         }
      }
      
      private function playSound(param1:String, param2:Boolean = false) : void
      {
         var currentDomain:ApplicationDomain = null;
         var soundClass:Class = null;
         var sound:Sound = null;
         var $definition:String = param1;
         var loop:Boolean = param2;
         try
         {
            if(!this._soundFilesLoaded)
            {
               return;
            }
            currentDomain = ApplicationDomain.currentDomain;
            soundClass = currentDomain.getDefinition($definition) as Class;
            sound = new soundClass();
            this.addSFXchannel(sound,$definition,loop);
         }
         catch(error:Error)
         {
            CityramaLogger.logger.fatal(error.message);
         }
      }
      
      private function cueSound(param1:Array) : void
      {
         var lenght:Number = NaN;
         var currentDomain:ApplicationDomain = null;
         var str:String = null;
         var soundClass:Class = null;
         var sound:Class = null;
         var array:Array = param1;
         try
         {
            if(!this._soundFilesLoaded)
            {
               return;
            }
            lenght = 0;
            currentDomain = ApplicationDomain.currentDomain;
            for each(str in array)
            {
               soundClass = currentDomain.getDefinition(str) as Class;
               sound = new soundClass();
               lenght += Sound(soundClass).length;
               TweenMax.delayedCall(lenght - Sound(soundClass).length,this.addSFXchannel,[sound,str]);
            }
         }
         catch(error:Error)
         {
            CityramaLogger.logger.fatal(error.message);
         }
      }
      
      public function playBounce() : void
      {
         this.playSound("CursorClick03");
      }
      
      public function playMysteryUnfold() : void
      {
         this.playSound("MysteryBuildingUnfold");
      }
      
      public function playButtonClick() : void
      {
         this.playSound("CursorClick01");
      }
      
      public function playCollect() : void
      {
         this.playSound("CollectCoin");
      }
      
      public function playLevelUp() : void
      {
         this.playSound("LevelUp03");
      }
      
      public function playRentCollectorActivate() : void
      {
         this.playSound("RentCollectorActivate");
      }
      
      public function playBuildingClick() : void
      {
         this.playSound("CursorClick03");
      }
      
      public function playStreetBuild() : void
      {
         this.playSound("RoadBuilt01");
      }
      
      public function playCollectXP() : void
      {
         this.playSound("CollectXP");
      }
      
      public function playBuildingDemolition() : void
      {
         this.playSound("DemolitionBuilding");
      }
      
      public function playInaugurateResidential() : void
      {
         this.playSound("ResidentInaugurate");
      }
      
      public function playBoulderDemolition(param1:String) : void
      {
         switch(param1)
         {
            case ServerTagConstants.TREE:
               this.playSound("TreeDemolish");
               return;
            case ServerTagConstants.ROCK:
               this.playSound("RockDemolish");
               return;
            case ServerTagConstants.SHRUBBERY:
               this.playSound("ShrubberyDemolish");
               return;
            default:
               this.playSound("DemolitionBoulder");
               return;
         }
      }
      
      public function playProductionBox() : void
      {
         this.playSound("ProductionBox");
      }
      
      public function playConstruction() : void
      {
         this.playSound("ConstructionBuilding");
      }
      
      public function playQuestReward() : void
      {
         this.playSound("QuestReward");
      }
      
      public function playQuestNew() : void
      {
         this.playSound("QuestNew");
      }
      
      public function playRCSpend() : void
      {
         this.playSound("SpendRC");
      }
      
      public function playEnergyUp() : void
      {
         this.playSound("EnergyUp");
      }
      
      public function playEnergyDown() : void
      {
         this.playSound("EnergyDown");
      }
      
      public function playMoodUp() : void
      {
         this.playSound("MoodUp");
      }
      
      public function playMoodDown() : void
      {
         this.playSound("MoodDown");
      }
      
      public function playBoosterSparkle() : void
      {
         this.playSound("BoosterSparkle");
      }
      
      public function playBoosterUnwrap() : void
      {
         this.playSound("BoosterUnwrap");
      }
      
      public function playEmergencyFail() : void
      {
         this.playSound("EmergencyFail");
      }
      
      public function playEmergencySuccess() : void
      {
         this.playSound("EmergencySuccess");
      }
      
      public function playSirenFire() : void
      {
         this.playSound("SirenFire",true);
      }
      
      public function stopSirenFire() : void
      {
         this.stopSound("SirenFire",true);
      }
      
      public function playMumble() : void
      {
      }
      
      public function playSirenPolice() : void
      {
         this.playSound("SirenPolice",true);
      }
      
      public function stopSirenPolice() : void
      {
         this.stopSound("SirenPolice",true);
      }
      
      public function playTVSwitch() : void
      {
         this.playSound("TVSwitch");
      }
      
      public function playTVTicker() : void
      {
         this.playSound("TVTicker");
      }
      
      public function playAlarmGeneral() : void
      {
      }
      
      public function playSirenAmbulance() : void
      {
         this.playSound("SirenAmbulance",true);
      }
      
      public function stopSirenAmbulance() : void
      {
         this.stopSound("SirenAmbulance",true);
      }
      
      public function playBossterFanfare() : void
      {
         this.playSound("BossterFanfare");
      }
      
      public function playEmergencyCitizenSound(param1:String) : void
      {
         switch(param1)
         {
            case ServerTagConstants.FIRE_DEPARTMENT:
               this.playSirenFire();
               break;
            case ServerTagConstants.POLICE_DEPARTMENT:
               this.playSirenPolice();
               break;
            case ServerTagConstants.HOSPITAL:
               this.playSirenAmbulance();
         }
      }
      
      public function stopEmergencyCitizenSoundByCitizenID(param1:String) : void
      {
         switch(param1)
         {
            case "emergency_firetruck":
               this.stopSirenFire();
               break;
            case "emergency_policecar":
               this.stopSirenPolice();
               break;
            case "emergency_ambulance":
               this.stopSirenAmbulance();
         }
      }
      
      public function playCityWheelSpinSoundMain() : void
      {
         this.playSound("CityWheelSpinMain",true);
      }
      
      public function stopCityWheelSpinSoundMain() : void
      {
         this.stopSound("CityWheelSpinMain",true);
      }
      
      public function playCityWheelStopSoundMain() : void
      {
         this.playSound("CityWheelStopMain");
      }
      
      public function stopCityWheelStopSoundMain() : void
      {
         this.stopSound("CityWheelStopMain",true);
      }
      
      public function playCityWheelSpinSoundBuff() : void
      {
         this.playSound("CityWheelSpinBuff",true);
      }
      
      public function stopCityWheelSpinSoundBuff() : void
      {
         this.stopSound("CityWheelSpinBuff",true);
      }
      
      public function playCityWheelStopSoundBuff() : void
      {
         this.playSound("CityWheelStopBuff");
      }
      
      public function stopCityWheelStopSoundBuff() : void
      {
         this.stopSound("CityWheelStopBuff",true);
      }
      
      public function playCityWheelMainSelected() : void
      {
         this.playSound("CityWheelSelectMain");
      }
      
      public function playCityWheelBuffSelected() : void
      {
         this.playSound("CityWheelSelectBuff");
      }
      
      public function playCityWheelRewardSound() : void
      {
         this.playSound("CityWheelReward");
      }
      
      public function playChristmasTreeUnwrap() : void
      {
         this.playSound("ChristmasTreeUnwrap");
      }
      
      public function playOlympicTorchDrop() : void
      {
         this.playSound("OlympicTorch");
      }
   }
}

