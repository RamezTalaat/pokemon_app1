class pokemon
{
  final String _name,_height , _pic_url, _weight, _candy  ,_egg;
  final double _spawnChance  ;
  pokemon(this._name,
      this._pic_url,
  this._height,
  this._weight,
  this._candy,
  this._egg,
  this._spawnChance,
  );


  get name => _name;
  get picUrl => _pic_url;
  get height =>_height;
  get weight =>_weight;
  get candy =>_candy;
  get egg =>_egg;
  get spawnChance => _spawnChance;

}