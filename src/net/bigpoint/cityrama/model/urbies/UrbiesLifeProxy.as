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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "UrbiesLifeProxy";
      }
      
      private var _currentID:int = 1;
      
      private var _citizensProxy:CitizensProxy;
      
      private var _urbieObjectDictionary:Dictionary;
      
      public function UrbiesLifeProxy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super(NAME,new Dictionary(true));
            if(!_loc1_)
            {
               this._citizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
               if(_loc2_)
               {
                  this._urbieObjectDictionary = new Dictionary(true);
               }
            }
         }
      }
      
      private function get nextID() : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = this;
         §§push(_loc1_._currentID);
         if(!_loc4_)
         {
            var _temp_2:* = §§pop();
            §§push(_temp_2);
            §§push(_temp_2);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_._currentID = _loc2_;
            }
         }
         return §§pop();
      }
      
      public function randomCitizen(param1:int, param2:Number) : UrbieLifeVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:UrbieLifeVo = new UrbieLifeVo(this._citizensProxy.randomUrbie(param1,param2));
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            _loc3_.id = this.nextID.toString();
         }
         return _loc3_;
      }
      
      public function getRandomCitizenFromMood(param1:String) : UrbieLifeVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Vector.<UrbieLifeConfigVo> = this._citizensProxy.getBatchOfMood(param1);
         var _loc3_:UrbieLifeVo = new UrbieLifeVo(_loc2_[Math.floor(_loc2_.length * Math.random())]);
         if(_loc5_)
         {
            _loc3_.id = this.nextID.toString();
         }
         return _loc3_;
      }
      
      public function randomCar(param1:int, param2:Number) : UrbieLifeVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:UrbieLifeVo = new UrbieLifeVo(this._citizensProxy.randomCar(param1,param2));
         if(_loc4_)
         {
            _loc3_.id = this.nextID.toString();
         }
         return _loc3_;
      }
      
      public function addUrbie(param1:UrbieLifeVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.dictionary[param1.id] = param1;
         }
      }
      
      public function getUrbieByXMLId(param1:String) : UrbieLifeVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:UrbieLifeConfigVo = this._citizensProxy.getSheetUrbieConfigByXMLID(param1);
         if(_loc5_ || Boolean(_loc2_))
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  §§goto(addr0058);
               }
            }
            var _loc3_:UrbieLifeVo = new UrbieLifeVo(_loc2_);
            if(!_loc4_)
            {
               _loc3_.id = this.nextID.toString();
            }
            return _loc3_;
         }
         addr0058:
         return null;
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

