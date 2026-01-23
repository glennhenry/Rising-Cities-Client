package net.bigpoint.cityrama.model.urbies
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeConfigVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class UrbiesLifeProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "UrbiesLifeProxy";
      
      private var _currentID:int = 1;
      
      private var _citizensProxy:CitizensProxy;
      
      private var _urbieObjectDictionary:Dictionary;
      
      public function UrbiesLifeProxy()
      {
         super(NAME,new Dictionary(true));
         this._citizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
         this._urbieObjectDictionary = new Dictionary(true);
      }
      
      private function get nextID() : int
      {
         return this._currentID++;
      }
      
      public function randomCitizen(param1:int, param2:Number) : UrbieLifeVo
      {
         var _loc3_:UrbieLifeVo = new UrbieLifeVo(this._citizensProxy.randomUrbie(param1,param2));
         _loc3_.id = this.nextID.toString();
         return _loc3_;
      }
      
      public function getRandomCitizenFromMood(param1:String) : UrbieLifeVo
      {
         var _loc2_:Vector.<UrbieLifeConfigVo> = this._citizensProxy.getBatchOfMood(param1);
         var _loc3_:UrbieLifeVo = new UrbieLifeVo(_loc2_[Math.floor(_loc2_.length * Math.random())]);
         _loc3_.id = this.nextID.toString();
         return _loc3_;
      }
      
      public function randomCar(param1:int, param2:Number) : UrbieLifeVo
      {
         var _loc3_:UrbieLifeVo = new UrbieLifeVo(this._citizensProxy.randomCar(param1,param2));
         _loc3_.id = this.nextID.toString();
         return _loc3_;
      }
      
      public function addUrbie(param1:UrbieLifeVo) : void
      {
         this.dictionary[param1.id] = param1;
      }
      
      public function getUrbieByXMLId(param1:String) : UrbieLifeVo
      {
         var _loc2_:UrbieLifeConfigVo = this._citizensProxy.getSheetUrbieConfigByXMLID(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:UrbieLifeVo = new UrbieLifeVo(_loc2_);
         _loc3_.id = this.nextID.toString();
         return _loc3_;
      }
      
      public function get dictionary() : Dictionary
      {
         return super.data as Dictionary;
      }
      
      public function get urbieObjectDictionary() : Dictionary
      {
         return this._urbieObjectDictionary;
      }
   }
}

