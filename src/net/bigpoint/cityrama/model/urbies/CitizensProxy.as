package net.bigpoint.cityrama.model.urbies
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.data.XMLLoaderVars;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.urbies.vo.FramesetVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeConfigVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CitizensProxy extends Proxy implements IProxy
   {
      
      public static const MOOD_SAD:String = "sad";
      
      public static const MOOD_HAPPY:String = "happy";
      
      public static const MOOD_NEUTRAL:String = "neutral";
      
      public static const NAME:String = "CitizensProxy";
      
      private var XML_CV_MASK:String = "xml#citizens?xml";
      
      private var _loaderQueue:LoaderMax = new LoaderMax();
      
      private var _xmlLoader:DataLoader;
      
      private var _fileRuntimeServiceProxy:FileRuntimeLoadServiceProxy;
      
      private var _globalBlanceProxy:GlobalBalanceProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _citizenBatch_sad:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_happy:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_normal:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_event:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_playfieldObjects:Vector.<UrbieLifeConfigVo>;
      
      private var _loaded:Boolean = false;
      
      private var _loading:Boolean = false;
      
      private var _carBatch:Vector.<UrbieLifeConfigVo>;
      
      private var _carEventBatch:Vector.<UrbieLifeConfigVo>;
      
      private var _carBatch_playfieldObjects:Vector.<UrbieLifeConfigVo>;
      
      private var _pfoCustomCitizenTagsFound:Dictionary;
      
      private var _pfoCustomCitizenTagsSpawned:Dictionary;
      
      private var _pfoCustomCarTagsFound:Dictionary;
      
      private var _pfoCustomCarTagsSpawned:Dictionary;
      
      public function CitizensProxy(param1:Object = null)
      {
         super(NAME,param1);
      }
      
      public function startLoad() : void
      {
         var _loc1_:CvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         this._loaded = false;
         this._loading = true;
         var _loc2_:String = _loc1_.getCvTagPath(this.XML_CV_MASK);
         this._xmlLoader = new DataLoader(this.flashVarsProxy.path + _loc2_,new XMLLoaderVars().name(this.XML_CV_MASK).noCache(false));
         this._loaderQueue.append(this._xmlLoader);
         this.configureListener();
         this._loaderQueue.load();
      }
      
      private function configureListener() : void
      {
         this._loaderQueue.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
         this._loaderQueue.addEventListener(LoaderEvent.IO_ERROR,this.onError);
         this._loaderQueue.addEventListener(LoaderEvent.SECURITY_ERROR,this.onError);
      }
      
      private function onError(param1:*) : void
      {
         sendNotification(ApplicationNotificationConstants.ERROR,"CitizensProxy:onError(" + param1 + ")");
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var _loc3_:String = null;
         super.setData(new XML(LoaderMax.getContent(this.XML_CV_MASK)));
         var _loc2_:* = "<xml><LoaderMax maxConnections=\"2\" load=\"false\">";
         for each(_loc3_ in this.xml..texture.text())
         {
            _loc2_ = _loc2_ + "<ImageLoader noCache=\"false\" name=\"" + _loc3_ + "\" url=\"" + this.flashVarsProxy.path + _loc3_ + "\" />";
         }
         for each(_loc3_ in this.xml..sheet.image.text())
         {
            _loc2_ = _loc2_ + "<ImageLoader noCache=\"false\" name=\"" + _loc3_ + "\" url=\"" + this.flashVarsProxy.path + _loc3_ + "\" />";
         }
         for each(_loc3_ in this.xml..light.image.text())
         {
            _loc2_ = _loc2_ + "<ImageLoader noCache=\"false\" name=\"" + _loc3_ + "\" url=\"" + this.flashVarsProxy.path + _loc3_ + "\" />";
         }
         _loc2_ += "</LoaderMax></xml>";
         this.fileRuntimeServiceProxy.service.addLoaderByXML(new XML(_loc2_));
         this._loaded = true;
         this._loading = false;
      }
      
      public function get xml() : XML
      {
         return super.data as XML;
      }
      
      public function getConfigByDependingGfxID(param1:Number) : UrbieLifeConfigVo
      {
         var result:UrbieLifeConfigVo = null;
         var citizensGFX:XML = null;
         var citizen:XML = null;
         var textures:XMLList = null;
         var iteration:int = 0;
         var texture:XML = null;
         var frameset:XML = null;
         var gfxID:Number = param1;
         result = new UrbieLifeConfigVo();
         citizensGFX = this.xml..requires.building.(@gfxID == gfxID.toString())[0];
         citizen = citizensGFX.parent().parent();
         textures = citizen.textures.texture;
         if(textures.length())
         {
            iteration = 1;
            var _loc3_:int = 0;
            var _loc4_:* = textures;
            for each(texture in _loc4_)
            {
               result = new UrbieLifeConfigVo();
               result.id = citizen.@id.toString();
               if(citizen.requires)
               {
                  if(citizen.requires.building.length())
                  {
                     result.requiredBuilding = citizen.requires.building.@gfxID[0].toString();
                  }
               }
               result.animationClass = citizen.@animation.toString();
               result.lightingPath = citizen.light.image.text().toString();
               result.lightingData = citizen.light.data.text().toString();
               result.sheetPath = citizen.sheet.image.text().toString();
               result.sheetData = citizen.sheet.data.text().toString();
               result.texturePath = texture.text().toString();
               result.iteration = iteration++;
               for each(frameset in citizen.animations.frameset)
               {
                  result.frameset[frameset.@id.toString()] = new FramesetVo(int(frameset.@start.toString()),int(frameset.@end.toString()),int(frameset.@playback.toString()));
               }
               result.fps = int(citizen.@fps.toString());
               result.columns = int(citizen.@col.toString());
               result.rows = int(citizen.@row.toString());
               result.offset = new Point(int(citizen.@offsetX.toString()),int(citizen.@offsetY.toString()));
               result.terrain = citizen.@terrain.toString();
               return result;
            }
         }
         else if(citizen.sheet.image.text())
         {
            result = new UrbieLifeConfigVo();
            if(citizen.requires)
            {
               if(citizen.requires.building.length())
               {
                  result.requiredBuilding = citizen.requires.building.@gfxID[0].toString();
               }
            }
            result.id = citizen.@id.toString();
            result.animationClass = citizen.@animation.toString();
            result.lightingPath = "";
            result.lightingData = "";
            result.sheetPath = citizen.sheet.image.text().toString();
            result.sheetData = citizen.sheet.data.text().toString();
            result.texturePath = "";
            result.iteration = 0;
            for each(frameset in citizen.animations.frameset)
            {
               result.frameset[frameset.@id.toString()] = new FramesetVo(int(frameset.@start.toString()),int(frameset.@end.toString()),int(frameset.@playback.toString()));
            }
            result.fps = int(citizen.@fps.toString());
            result.columns = int(citizen.@col.toString());
            result.rows = int(citizen.@row.toString());
            result.offset = new Point(int(citizen.@offsetX.toString()),int(citizen.@offsetY.toString()));
            return result;
         }
         return result;
      }
      
      private function get happinessMood() : String
      {
         if(this.globalBlanceProxy.happinessPercental >= 0.66)
         {
            return MOOD_HAPPY;
         }
         if(this.globalBlanceProxy.happinessPercental <= -0.66)
         {
            return MOOD_SAD;
         }
         return MOOD_NEUTRAL;
      }
      
      public function get batch() : Vector.<UrbieLifeConfigVo>
      {
         return this.getBatchOfMood(this.happinessMood);
      }
      
      public function get carBatch() : Vector.<UrbieLifeConfigVo>
      {
         var _loc1_:XMLList = null;
         if(!this._carBatch)
         {
            _loc1_ = this.xml..cars.citizen;
            this._carBatch = this.parseCitizenCombos(_loc1_);
         }
         return this._carBatch;
      }
      
      public function getSheetUrbieConfigByXMLID(param1:String) : UrbieLifeConfigVo
      {
         var citizen:XML = null;
         var frameset:XML = null;
         var id:String = param1;
         var result:UrbieLifeConfigVo = new UrbieLifeConfigVo();
         if(this.xml)
         {
            citizen = this.xml..citizen.(@id == id)[0];
            if(citizen)
            {
               if(citizen..texture.length())
               {
                  result.lightingPath = citizen.light.image.text().toString();
                  result.lightingData = citizen.light.data.text().toString();
                  result.sheetPath = citizen.sheet.image.text().toString();
                  result.sheetData = citizen.sheet.data.text().toString();
                  result.texturePath = citizen..texture[0].text().toString();
                  result.id = citizen.@id.toString();
                  if(citizen.@spawnEnabled)
                  {
                     result.spawnEnabled = citizen.@spawnEnabled != "false";
                  }
                  if(citizen.@unique)
                  {
                     result.unique = citizen.@unique != "false";
                  }
               }
               else
               {
                  result.lightingPath = "";
                  result.lightingData = "";
                  result.sheetPath = citizen.sheet.image.text().toString();
                  result.sheetData = citizen.sheet.data.text().toString();
                  result.texturePath = "";
                  if(citizen.@spawnEnabled)
                  {
                     result.spawnEnabled = citizen.@spawnEnabled != "false";
                  }
                  else
                  {
                     result.spawnEnabled = true;
                  }
                  if(citizen.@unique)
                  {
                     result.unique = citizen.@unique == "true";
                  }
                  else
                  {
                     result.unique = false;
                  }
               }
               result.id = citizen.@id.toString();
               result.citizenID = citizen.@id.toString();
               result.animationClass = citizen.@animation.toString();
               result.iteration = 0;
               for each(frameset in citizen.animations.frameset)
               {
                  result.frameset[frameset.@id.toString()] = new FramesetVo(int(frameset.@start.toString()),int(frameset.@end.toString()),int(frameset.@playback.toString()));
               }
               result.fps = int(citizen.@fps.toString());
               result.columns = int(citizen.@col.toString());
               result.rows = int(citizen.@row.toString());
               result.offset = new Point(int(citizen.@offsetX.toString()),int(citizen.@offsetY.toString()));
               result.terrain = citizen.@terrain.toString();
               return result;
            }
         }
         return null;
      }
      
      private function checkIfBuildingConditionsAreMet(param1:String, param2:Vector.<String>) : Boolean
      {
         if(param2.indexOf(param1) == -1)
         {
            return false;
         }
         return true;
      }
      
      private function get availableGFXids() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         return _loc1_;
      }
      
      public function randomUrbie(param1:int, param2:Number) : UrbieLifeConfigVo
      {
         var _loc3_:Vector.<UrbieLifeConfigVo> = null;
         var _loc4_:int = 0;
         if(param1 != 0 && Math.random() < param2)
         {
            _loc3_ = this.getEventUrbieList(param1);
            if(_loc3_.length == 0)
            {
               return this.randomPfoCitizenConfig;
            }
            _loc4_ = Math.floor(Math.random() * _loc3_.length);
            return _loc3_[_loc4_];
         }
         return this.randomPfoCitizenConfig;
      }
      
      public function resetSpawnedList() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(!this._pfoCustomCitizenTagsSpawned || !this._pfoCustomCarTagsSpawned)
         {
            return;
         }
         for(_loc1_ in this._pfoCustomCitizenTagsFound)
         {
            this._pfoCustomCitizenTagsSpawned[_loc1_] = 0;
         }
         for(_loc2_ in this._pfoCustomCarTagsFound)
         {
            this._pfoCustomCarTagsSpawned[_loc2_] = 0;
         }
      }
      
      public function scanForPfoTags() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:IObject3D = null;
         var _loc7_:BillboardObject = null;
         var _loc8_:String = null;
         this._pfoCustomCarTagsFound = new Dictionary();
         this._pfoCustomCarTagsSpawned = new Dictionary();
         this._pfoCustomCitizenTagsFound = new Dictionary();
         this._pfoCustomCitizenTagsSpawned = new Dictionary();
         var _loc1_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc2_:int = ServerTagConstants.CLIENT_CUSTOM_URBIE.length;
         var _loc3_:int = ServerTagConstants.CLIENT_CUSTOM_CAR.length;
         for each(_loc6_ in _loc1_.objectList)
         {
            if(_loc6_ is BillboardObject)
            {
               _loc7_ = _loc6_ as BillboardObject;
               if(_loc7_.billboardObjectVo && _loc7_.billboardObjectVo.buildingDTO && _loc7_.billboardObjectVo.buildingDTO.config && Boolean(_loc7_.billboardObjectVo.buildingDTO.config.tags))
               {
                  for each(_loc8_ in _loc7_.billboardObjectVo.buildingDTO.config.tags)
                  {
                     _loc5_ = int(_loc8_.indexOf(ServerTagConstants.CLIENT_CUSTOM_URBIE));
                     if(_loc5_ != -1)
                     {
                        _loc4_ = int(_loc8_.slice(_loc5_ + _loc2_,_loc8_.length));
                        if(this._pfoCustomCitizenTagsFound[_loc4_] == null)
                        {
                           this._pfoCustomCitizenTagsFound[_loc4_] = 1;
                           this._pfoCustomCitizenTagsSpawned[_loc4_] = 0;
                        }
                        else
                        {
                           ++this._pfoCustomCitizenTagsFound[_loc4_];
                        }
                     }
                     else
                     {
                        _loc5_ = int(_loc8_.indexOf(ServerTagConstants.CLIENT_CUSTOM_CAR));
                        if(_loc5_ != -1)
                        {
                           _loc4_ = int(_loc8_.slice(_loc5_ + _loc3_,_loc8_.length));
                           if(this._pfoCustomCarTagsFound[_loc4_] == null)
                           {
                              this._pfoCustomCarTagsFound[_loc4_] = 1;
                              this._pfoCustomCarTagsSpawned[_loc4_] = 0;
                           }
                           else
                           {
                              ++this._pfoCustomCarTagsFound[_loc4_];
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function get randomPfoCitizenConfig() : UrbieLifeConfigVo
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         if(!this._pfoCustomCitizenTagsFound)
         {
            this.scanForPfoTags();
         }
         for(_loc1_ in this._pfoCustomCitizenTagsFound)
         {
            if(this._pfoCustomCitizenTagsSpawned[_loc1_] < this._pfoCustomCitizenTagsFound[_loc1_])
            {
               _loc2_ = 0;
               while(_loc2_ < this.playfieldObjectsCitizenBatch.length)
               {
                  if(this.playfieldObjectsCitizenBatch[_loc2_].pfoTagID == _loc1_)
                  {
                     ++this._pfoCustomCitizenTagsSpawned[_loc1_];
                     return this.playfieldObjectsCitizenBatch[_loc2_];
                  }
                  _loc2_++;
               }
            }
         }
         return this.randomStandardCitizenConfig;
      }
      
      private function get randomPfoCarConfig() : UrbieLifeConfigVo
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         if(!this._pfoCustomCarTagsFound)
         {
            this.scanForPfoTags();
         }
         for(_loc1_ in this._pfoCustomCarTagsFound)
         {
            if(this._pfoCustomCarTagsSpawned[_loc1_] < this._pfoCustomCarTagsFound[_loc1_])
            {
               _loc2_ = 0;
               while(_loc2_ < this.playfieldObjectsCarBatch.length)
               {
                  if(this.playfieldObjectsCarBatch[_loc2_].pfoTagID == _loc1_)
                  {
                     ++this._pfoCustomCarTagsSpawned[_loc1_];
                     return this.playfieldObjectsCarBatch[_loc2_];
                  }
                  _loc2_++;
               }
            }
         }
         return this.randomStandardCarConfig;
      }
      
      private function get randomStandardCitizenConfig() : UrbieLifeConfigVo
      {
         var _loc1_:int = Math.floor(Math.random() * this.batch.length);
         var _loc2_:UrbieLifeConfigVo = this.batch[_loc1_];
         while(!_loc2_.spawnEnabled)
         {
            _loc1_ = Math.floor(Math.random() * this.batch.length);
            _loc2_ = this.batch[_loc1_];
         }
         return _loc2_;
      }
      
      public function randomCar(param1:int, param2:Number) : UrbieLifeConfigVo
      {
         var _loc3_:Vector.<UrbieLifeConfigVo> = null;
         var _loc4_:int = 0;
         if(param1 != 0 && Math.random() < param2)
         {
            _loc3_ = this.getEventCarList(param1);
            if(_loc3_.length == 0)
            {
               return this.randomPfoCarConfig;
            }
            _loc4_ = Math.floor(Math.random() * _loc3_.length);
            return _loc3_[_loc4_];
         }
         return this.randomPfoCarConfig;
      }
      
      private function get randomStandardCarConfig() : UrbieLifeConfigVo
      {
         var _loc1_:Vector.<UrbieLifeConfigVo> = this.carBatch;
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         var _loc3_:UrbieLifeConfigVo = _loc1_[_loc2_];
         while(!_loc3_.spawnEnabled || _loc3_.eventID != 0)
         {
            _loc2_ = Math.floor(Math.random() * _loc1_.length);
            _loc3_ = _loc1_[_loc2_];
         }
         return _loc3_;
      }
      
      private function getEventUrbieList(param1:int) : Vector.<UrbieLifeConfigVo>
      {
         var _loc2_:Vector.<UrbieLifeConfigVo> = this.eventBatch;
         var _loc3_:Vector.<UrbieLifeConfigVo> = new Vector.<UrbieLifeConfigVo>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].eventID == param1)
            {
               _loc3_.push(_loc2_[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function getEventCarList(param1:int) : Vector.<UrbieLifeConfigVo>
      {
         var _loc2_:Vector.<UrbieLifeConfigVo> = this.carBatch;
         var _loc3_:Vector.<UrbieLifeConfigVo> = new Vector.<UrbieLifeConfigVo>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].eventID == param1)
            {
               _loc3_.push(_loc2_[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get loaded() : Boolean
      {
         return this._loaded;
      }
      
      public function get loading() : Boolean
      {
         return this._loading;
      }
      
      private function get flashVarsProxy() : FlashVarsProxy
      {
         if(this._flashVarsProxy == null)
         {
            this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         }
         return this._flashVarsProxy;
      }
      
      private function get fileRuntimeServiceProxy() : FileRuntimeLoadServiceProxy
      {
         if(this._fileRuntimeServiceProxy == null)
         {
            this._fileRuntimeServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         }
         return this._fileRuntimeServiceProxy;
      }
      
      private function get globalBlanceProxy() : GlobalBalanceProxy
      {
         if(this._globalBlanceProxy == null)
         {
            this._globalBlanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         }
         return this._globalBlanceProxy;
      }
      
      private function setCitizenBatchByMood(param1:String, param2:Vector.<UrbieLifeConfigVo>) : void
      {
         switch(param1)
         {
            case MOOD_SAD:
               this._citizenBatch_sad = param2;
               break;
            case MOOD_HAPPY:
               this._citizenBatch_happy = param2;
               break;
            default:
               this._citizenBatch_normal = param2;
         }
      }
      
      private function getCitizenBatchByMood(param1:String) : Vector.<UrbieLifeConfigVo>
      {
         switch(param1)
         {
            case MOOD_SAD:
               return this._citizenBatch_sad;
            case MOOD_HAPPY:
               return this._citizenBatch_happy;
            default:
               return this._citizenBatch_normal;
         }
      }
      
      public function getBatchOfMood(param1:String) : Vector.<UrbieLifeConfigVo>
      {
         var _loc2_:XMLList = null;
         if(this.getCitizenBatchByMood(param1) == null)
         {
            switch(param1)
            {
               case MOOD_SAD:
                  _loc2_ = this.xml..sad.citizen;
                  break;
               case MOOD_HAPPY:
                  _loc2_ = this.xml..happy.citizen;
                  break;
               case MOOD_NEUTRAL:
                  _loc2_ = this.xml.neutral..citizen;
            }
            this.setCitizenBatchByMood(param1,this.parseCitizenCombos(_loc2_));
         }
         return this.getCitizenBatchByMood(param1);
      }
      
      public function get eventBatch() : Vector.<UrbieLifeConfigVo>
      {
         if(!this._citizenBatch_event)
         {
            this._citizenBatch_event = this.parseCitizenCombos(this.xml..event.citizen);
         }
         return this._citizenBatch_event;
      }
      
      public function get playfieldObjectsCitizenBatch() : Vector.<UrbieLifeConfigVo>
      {
         if(!this._citizenBatch_playfieldObjects)
         {
            this._citizenBatch_playfieldObjects = this.parseCitizenCombos(this.xml..playfieldObjectCitizens.citizen);
         }
         return this._citizenBatch_playfieldObjects;
      }
      
      public function get playfieldObjectsCarBatch() : Vector.<UrbieLifeConfigVo>
      {
         if(!this._carBatch_playfieldObjects)
         {
            this._carBatch_playfieldObjects = this.parseCitizenCombos(this.xml..playfieldObjectCars.citizen);
         }
         return this._carBatch_playfieldObjects;
      }
      
      private function parseCitizenCombos(param1:XMLList) : Vector.<UrbieLifeConfigVo>
      {
         var _loc3_:UrbieLifeConfigVo = null;
         var _loc4_:XML = null;
         var _loc5_:Vector.<String> = null;
         var _loc6_:XMLList = null;
         var _loc7_:int = 0;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc2_:Vector.<UrbieLifeConfigVo> = new Vector.<UrbieLifeConfigVo>();
         for each(_loc4_ in param1)
         {
            _loc5_ = this.availableGFXids;
            _loc6_ = _loc4_.textures.texture;
            if(_loc6_.length())
            {
               _loc7_ = 1;
               for each(_loc8_ in _loc6_)
               {
                  _loc3_ = new UrbieLifeConfigVo();
                  _loc3_.id = _loc4_.@id.toString();
                  if(_loc4_.requires)
                  {
                     if(_loc4_.requires.building.length())
                     {
                        _loc3_.requiredBuilding = _loc4_.requires.building.@gfxID[0].toString();
                     }
                  }
                  _loc3_.animationClass = _loc4_.@animation.toString();
                  _loc3_.lightingPath = _loc4_.light.image.text().toString();
                  _loc3_.lightingData = _loc4_.light.data.text().toString();
                  _loc3_.sheetPath = _loc4_.sheet.image.text().toString();
                  _loc3_.sheetData = _loc4_.sheet.data.text().toString();
                  _loc3_.spawnEnabled = _loc4_.@spawnEnabled != "false";
                  _loc3_.unique = _loc4_.@unique != "false";
                  _loc3_.texturePath = _loc8_.text().toString();
                  _loc3_.iteration = _loc7_++;
                  for each(_loc9_ in _loc4_.animations.frameset)
                  {
                     _loc3_.frameset[_loc9_.@id.toString()] = new FramesetVo(int(_loc9_.@start.toString()),int(_loc9_.@end.toString()),int(_loc9_.@playback.toString()));
                  }
                  _loc3_.fps = int(_loc4_.@fps.toString());
                  _loc3_.columns = int(_loc4_.@col.toString());
                  _loc3_.rows = int(_loc4_.@row.toString());
                  _loc3_.offset = new Point(int(_loc4_.@offsetX.toString()),int(_loc4_.@offsetY.toString()));
                  _loc3_.terrain = _loc4_.@terrain.toString();
                  _loc3_.eventID = int(_loc4_.@eventID.toString());
                  _loc3_.pfoTagID = int(_loc4_.@pfoTagID.toString());
                  _loc2_.push(_loc3_);
               }
            }
            else if(_loc4_.sheet.image.text())
            {
               _loc3_ = new UrbieLifeConfigVo();
               if(_loc4_.requires)
               {
                  if(_loc4_.requires.building.length())
                  {
                     _loc3_.requiredBuilding = _loc4_.requires.building.@gfxID[0].toString();
                  }
               }
               _loc3_.id = _loc4_.@id.toString();
               _loc3_.animationClass = _loc4_.@animation.toString();
               _loc3_.lightingPath = "";
               _loc3_.lightingData = "";
               _loc3_.sheetPath = _loc4_.sheet.image.text().toString();
               _loc3_.sheetData = _loc4_.sheet.data.text().toString();
               _loc3_.texturePath = "";
               _loc3_.iteration = 0;
               _loc3_.spawnEnabled = _loc4_.@spawnEnabled != "false";
               _loc3_.unique = _loc4_.@unique != "false";
               for each(_loc9_ in _loc4_.animations.frameset)
               {
                  _loc3_.frameset[_loc9_.@id.toString()] = new FramesetVo(int(_loc9_.@start.toString()),int(_loc9_.@end.toString()),int(_loc9_.@playback.toString()));
               }
               _loc3_.fps = int(_loc4_.@fps.toString());
               _loc3_.columns = int(_loc4_.@col.toString());
               _loc3_.rows = int(_loc4_.@row.toString());
               _loc3_.offset = new Point(int(_loc4_.@offsetX.toString()),int(_loc4_.@offsetY.toString()));
               _loc3_.terrain = _loc4_.@terrain.toString();
               _loc3_.eventID = int(_loc4_.@eventID.toString());
               _loc3_.pfoTagID = int(_loc4_.@pfoTagID.toString());
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
   }
}

