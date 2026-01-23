package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableUVObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IGameObject;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.pedestrians.GenericUrbieBottom;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.pedestrians.GenericUrbieTop;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.vehicles.GenericCar;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.vehicles.GenericSheetCar;
   import net.bigpoint.services.filePreloadService.FilePreloadService;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeImageLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadService;
   import net.bigpoint.util.CityramaLogger;
   
   public class UrbieFactory
   {
      
      private static var _instance:UrbieFactory;
      
      private var _filePreloadService:FilePreloadService;
      
      private var _fileRuntimeLoadService:FileRuntimeLoadService;
      
      private var _animationsClasses:Dictionary;
      
      private var _sheetDictionary:Dictionary;
      
      public function UrbieFactory(param1:FilePreloadService, param2:FileRuntimeLoadService)
      {
         super();
         if(UrbieFactory._instance != null)
         {
            throw new Error("SingletonError::UrbieFactory");
         }
         this._filePreloadService = param1;
         this._fileRuntimeLoadService = param2;
         this._animationsClasses = new Dictionary();
         this._animationsClasses["genericcar"] = GenericCar;
         this._animationsClasses["genericurbietop"] = GenericUrbieTop;
         this._animationsClasses["genericurbiebottom"] = GenericUrbieBottom;
         this._animationsClasses["genericsheetcar"] = GenericSheetCar;
         this._sheetDictionary = new Dictionary(true);
      }
      
      public static function init(param1:FilePreloadService, param2:FileRuntimeLoadService) : void
      {
         UrbieFactory._instance = new UrbieFactory(param1,param2);
      }
      
      public static function get instance() : UrbieFactory
      {
         return UrbieFactory._instance;
      }
      
      public function getUrbie(param1:UrbieLifeVo) : IGameObject
      {
         if(this._animationsClasses[param1.config.animationClass] != null)
         {
            var _loc2_:Class = this._animationsClasses[param1.config.animationClass];
            var _loc3_:Sprite = this.generateContainer(param1);
            CityramaLogger.logger.fatal("UrbieFactory:: URBIE NOT FOUND :: ",param1.config.citizenID);
            return null;
         }
         return null;
      }
      
      private function generateContainer(param1:UrbieLifeVo) : Sprite
      {
         var _loc2_:FileRuntimeImageLoader = null;
         if(Boolean(param1.config.sheetPath) && Boolean(param1.config.texturePath) && Boolean(param1.config.lightingPath))
         {
            return new PreloadableUVObject(new Sprite(),param1.config.sheetPath,param1.config.texturePath,param1.config.lightingPath,this._fileRuntimeLoadService);
         }
         if(param1.config.sheetPath && !param1.config.texturePath && !param1.config.lightingPath)
         {
            _loc2_ = this._fileRuntimeLoadService.getLoaderForImage(param1.config.sheetPath);
            return new PreloadableImage(new Sprite(),_loc2_);
         }
         return null;
      }
      
      public function get sheetDictionary() : Dictionary
      {
         return this._sheetDictionary;
      }
   }
}

